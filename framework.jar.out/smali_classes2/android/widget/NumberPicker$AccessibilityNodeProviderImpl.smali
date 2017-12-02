.class Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .prologue
    .line 2331
    iput-object p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2340
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2342
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2344
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2331
    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 2687
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2688
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2689
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2690
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2692
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2693
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2695
    :cond_0
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2696
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2697
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2700
    :cond_1
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2701
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2702
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2705
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    .line 2704
    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2707
    .local v0, "applicationScale":F
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2708
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2709
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2710
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2712
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-wrap0(Landroid/widget/NumberPicker;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2714
    move-object v2, v1

    .line 2715
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2716
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2717
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2718
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2719
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2721
    iget v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_2

    .line 2722
    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2724
    :cond_2
    iget v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_3

    .line 2725
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2727
    :cond_3
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2728
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2729
    :cond_4
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2731
    :cond_5
    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v5}, Landroid/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v6}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_7

    .line 2732
    :cond_6
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2736
    :cond_7
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 2653
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2654
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2655
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2656
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2657
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2658
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2659
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2660
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2661
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2662
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2663
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2664
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->-wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2665
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2666
    move-object v1, v0

    .line 2667
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2668
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2669
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2670
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2672
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2673
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2675
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    .line 2676
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2678
    :cond_1
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2679
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2682
    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v5, 0x2

    .line 2631
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2632
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2633
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    .line 2634
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2636
    :cond_0
    iget v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    .line 2637
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2639
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2640
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2641
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4, v0}, Landroid/widget/NumberPicker;->-wrap1(Landroid/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2642
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2643
    move-object v1, v0

    .line 2644
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2645
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2646
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2647
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2648
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 5
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v4, 0x2

    .line 2597
    packed-switch p2, :pswitch_data_0

    .line 2596
    :cond_0
    return-void

    .line 2599
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    .line 2600
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2601
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2600
    if-eqz v3, :cond_1

    .line 2602
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2604
    :cond_1
    return-void

    .line 2606
    .end local v2    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2607
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2608
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2607
    if-eqz v3, :cond_2

    .line 2609
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2610
    return-void

    .line 2612
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2613
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2614
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2613
    if-eqz v3, :cond_0

    .line 2615
    invoke-virtual {p0, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2616
    return-void

    .line 2620
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    .line 2621
    .restart local v2    # "text":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2622
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 2621
    if-eqz v3, :cond_3

    .line 2623
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2625
    :cond_3
    return-void

    .line 2597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2748
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get19(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2749
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get20(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2750
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap3(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2752
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2753
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 2754
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2756
    :cond_2
    return-object v2
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2760
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get19(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2761
    .local v0, "value":I
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get20(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2762
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap3(Landroid/widget/NumberPicker;I)I

    move-result v0

    .line 2764
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get10(Landroid/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2765
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap4(Landroid/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 2766
    :cond_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get5(Landroid/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get11(Landroid/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2768
    :cond_2
    return-object v2
.end method

.method private hasVirtualDecrementButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2740
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 2744
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2584
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2585
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2586
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 2587
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2588
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2589
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 2590
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 2591
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2583
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2573
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get3(Landroid/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2574
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2575
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2576
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2577
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 2578
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2572
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2348
    packed-switch p1, :pswitch_data_0

    .line 2368
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2350
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v1

    .line 2351
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2350
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2354
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v4

    .line 2355
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v1, v5

    add-int v5, v0, v1

    .line 2356
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v1

    add-int v6, v0, v1

    .line 2353
    const/4 v1, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2358
    :pswitch_3
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    .line 2359
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2360
    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 2361
    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2358
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2364
    :pswitch_4
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v3

    .line 2365
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get15(Landroid/widget/NumberPicker;)I

    move-result v1

    sub-int v4, v0, v1

    .line 2366
    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get13(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v5, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v5}, Landroid/widget/NumberPicker;->-get8(Landroid/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v1, v5

    add-int v5, v0, v1

    iget-object v0, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-get14(Landroid/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v6, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v6}, Landroid/widget/NumberPicker;->-get17(Landroid/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    .line 2363
    const/4 v1, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2348
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2375
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2378
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2379
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2397
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2382
    :pswitch_1
    const/4 v2, 0x3

    .line 2381
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2384
    const/4 v2, 0x2

    .line 2383
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2386
    const/4 v2, 0x1

    .line 2385
    invoke-direct {p0, v1, v2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2387
    return-object v0

    .line 2392
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2394
    return-object v0

    .line 2379
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v4, 0x10000

    const v3, 0x8000

    const/high16 v2, -0x80000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2402
    packed-switch p1, :pswitch_data_0

    .line 2549
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 2404
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2406
    :sswitch_0
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_0

    .line 2407
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2408
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 2409
    return v6

    .line 2411
    :cond_0
    return v5

    .line 2413
    :sswitch_1
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_1

    .line 2414
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2415
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 2416
    return v6

    .line 2418
    :cond_1
    return v5

    .line 2421
    :sswitch_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2422
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMaxValue()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2423
    :cond_2
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v6}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    .line 2424
    return v6

    .line 2426
    :cond_3
    return v5

    .line 2428
    :sswitch_3
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2429
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getMinValue()I

    move-result v2

    if-le v1, v2, :cond_5

    .line 2430
    :cond_4
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v5}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    .line 2431
    return v6

    .line 2433
    :cond_5
    return v5

    .line 2437
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2483
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    return v1

    .line 2439
    :sswitch_4
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2486
    :cond_6
    return v5

    .line 2440
    :cond_7
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    move-result v1

    return v1

    .line 2444
    :sswitch_5
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2445
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 2446
    return v6

    .line 2448
    :cond_8
    return v5

    .line 2451
    :sswitch_6
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2452
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->performClick()Z

    .line 2453
    return v6

    .line 2455
    :cond_9
    return v5

    .line 2458
    :sswitch_7
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2459
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->performLongClick()Z

    .line 2460
    return v6

    .line 2462
    :cond_a
    return v5

    .line 2465
    :sswitch_8
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_b

    .line 2466
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2467
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2469
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2470
    return v6

    .line 2472
    :cond_b
    return v5

    .line 2474
    :sswitch_9
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_c

    .line 2475
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2476
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2478
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 2479
    return v6

    .line 2481
    :cond_c
    return v5

    .line 2488
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    .line 2516
    return v5

    .line 2490
    :sswitch_a
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2491
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v6}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    .line 2492
    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2494
    return v6

    .line 2496
    :cond_d
    return v5

    .line 2498
    :sswitch_b
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_e

    .line 2499
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2500
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2502
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 2503
    return v6

    .line 2505
    :cond_e
    return v5

    .line 2507
    :sswitch_c
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_f

    .line 2508
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2509
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2511
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get2(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v4}, Landroid/widget/NumberPicker;->-get1(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    .line 2512
    return v6

    .line 2514
    :cond_f
    return v5

    .line 2518
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    .line 2547
    return v5

    .line 2520
    :sswitch_d
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2521
    if-ne p1, v6, :cond_10

    const/4 v0, 0x1

    .line 2522
    .local v0, "increment":Z
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    .line 2523
    invoke-virtual {p0, p1, v6}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2525
    return v6

    .line 2521
    .end local v0    # "increment":Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0    # "increment":Z
    goto :goto_1

    .line 2527
    .end local v0    # "increment":Z
    :cond_11
    return v5

    .line 2529
    :sswitch_e
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_12

    .line 2530
    iput p1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2531
    invoke-virtual {p0, p1, v3}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2533
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 2534
    return v6

    .line 2536
    :cond_12
    return v5

    .line 2538
    :sswitch_f
    iget v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_13

    .line 2539
    iput v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2540
    invoke-virtual {p0, p1, v4}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2542
    iget-object v1, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    iget-object v2, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v2}, Landroid/widget/NumberPicker;->-get12(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-get18(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    .line 2543
    return v6

    .line 2545
    :cond_13
    return v5

    .line 2402
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2404
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2437
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
    .end sparse-switch

    .line 2488
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_a
        0x40 -> :sswitch_b
        0x80 -> :sswitch_c
    .end sparse-switch

    .line 2518
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_d
        0x40 -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2553
    packed-switch p1, :pswitch_data_0

    .line 2552
    :cond_0
    :goto_0
    return-void

    .line 2555
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2557
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2556
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2561
    :pswitch_1
    invoke-direct {p0, p2}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2564
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2566
    invoke-direct {p0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2565
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2553
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

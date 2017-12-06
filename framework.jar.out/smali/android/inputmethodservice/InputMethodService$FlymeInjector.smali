.class final Landroid/inputmethodservice/InputMethodService$FlymeInjector;
.super Ljava/lang/Object;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$FlymeInjector$FlymeHandler;
    }
.end annotation


# static fields
.field private static final MZ_MSG_REQUEST_HIDE_SELF:I = 0x1

.field private static final MZ_MSG_REQUEST_SHOW_SELF:I = 0x2

.field private static final MZ_ON_UNBIND_INPUT:I = 0x1

.field private static final sCoverChildMap:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2748
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 2749
    const-string/jumbo v1, "com.meizu.input.cover.SMILE"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2750
    const-string/jumbo v1, "com.meizu.input.cover.VOICE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2748
    sput-object v0, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->sCoverChildMap:[Ljava/lang/String;

    .line 2745
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 2745
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static computeCoverHeight(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    const/4 v3, 0x1

    .line 2807
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 2809
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2810
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 2817
    :goto_0
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 2818
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 2819
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 2806
    return-void

    .line 2811
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 2812
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    goto :goto_0

    .line 2814
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2815
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0
.end method

.method private static getFlymePrivateImeOptionsMap(Landroid/inputmethodservice/InputMethodService;)Ljava/util/Map;
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/inputmethodservice/InputMethodService;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2787
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymePrivateImeOptionsMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2788
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymePrivateImeOptionsMap:Ljava/util/Map;

    .line 2791
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymePrivateImeOptionsMap:Ljava/util/Map;

    return-object v0
.end method

.method static handleBack(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->flymeInvokeMethodHandleBack(Z)Z

    .line 2783
    const/4 v0, 0x0

    return v0
.end method

.method static handleSmsVoiceInput(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 2823
    const-string/jumbo v5, "com.meizu.input.attrsChanged"

    invoke-static {v5, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2824
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 2825
    .local v2, "attrs":Landroid/view/inputmethod/EditorInfo;
    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v5, :cond_1

    .line 2826
    const-string/jumbo v5, "imeOptions"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2827
    .local v4, "imeOptions":I
    const-string/jumbo v5, "actionId"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2828
    .local v0, "actionId":I
    const-string/jumbo v5, "actionLabel"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2829
    .local v1, "actionLabel":Ljava/lang/CharSequence;
    iget v5, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-ne v4, v5, :cond_0

    iget v5, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-ne v5, v0, :cond_0

    .line 2830
    iget-object v5, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 2829
    if-eqz v5, :cond_0

    .line 2831
    return-void

    .line 2833
    :cond_0
    iput v4, v2, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2834
    iput v0, v2, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 2835
    iput-object v1, v2, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 2836
    const-string/jumbo v5, "initialSelStart"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 2837
    const-string/jumbo v5, "initialSelEnd"

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-virtual {p2, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 2838
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v2, v6}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 2822
    .end local v0    # "actionId":I
    .end local v1    # "actionLabel":Ljava/lang/CharSequence;
    .end local v2    # "attrs":Landroid/view/inputmethod/EditorInfo;
    .end local v4    # "imeOptions":I
    :cond_1
    :goto_0
    return-void

    .line 2841
    :cond_2
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    .line 2842
    .local v3, "cover":Lcom/meizu/widget/inputmethod/CoverView;
    if-eqz v3, :cond_3

    .line 2843
    invoke-virtual {v3, p1, p2}, Lcom/meizu/widget/inputmethod/CoverView;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2845
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static hideInputDelayIfNeeded(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 4
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2928
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->isAppCompatibleMeizu(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2926
    :cond_0
    return-void
.end method

.method static initFlymeCoverViews(Landroid/inputmethodservice/InputMethodService;)V
    .locals 5
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2854
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/flyme/internal/R$layout;->input_method_cover_container:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    .line 2855
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/inputmethodservice/SoftInputWindow;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2856
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    .line 2853
    return-void
.end method

.method static initFlymeExtraFields(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2850
    new-instance v0, Landroid/inputmethodservice/InputMethodService$FlymeInjector$FlymeHandler;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector$FlymeHandler;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    .line 2849
    return-void
.end method

.method private static isAppCompatibleMeizu(Landroid/view/inputmethod/EditorInfo;)Z
    .locals 7
    .param p0, "attribute"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2934
    iget v2, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    const v4, #android:id@edit#t

    if-ne v2, v4, :cond_0

    .line 2935
    return v3

    .line 2937
    :cond_0
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    .line 2938
    const-string/jumbo v2, "com.icbc"

    aput-object v2, v0, v3

    .line 2939
    const-string/jumbo v2, "com.tmall.wireless"

    aput-object v2, v0, v6

    .line 2940
    const-string/jumbo v2, "com.android.meizu.audioprofiles"

    const/4 v4, 0x2

    aput-object v2, v0, v4

    .line 2942
    .local v0, "APPS_INCOMPATIBLE_MZ":[Ljava/lang/String;
    array-length v4, v0

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v1, v0, v2

    .line 2943
    .local v1, "s":Ljava/lang/String;
    iget-object v5, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2944
    return v3

    .line 2942
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2947
    .end local v1    # "s":Ljava/lang/String;
    :cond_2
    return v6
.end method

.method static isImeInterceptBackKey(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 3
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v0, 0x0

    .line 2777
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "keyboard_exit_directly"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static onEvaluateFullscreenMode(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 2
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v1, 0x0

    .line 2866
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v0, :cond_0

    .line 2867
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 2868
    const/4 v0, 0x1

    return v0

    .line 2870
    :cond_0
    return v1
.end method

.method static removeHideSelfMessage(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2921
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2922
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2920
    :cond_0
    return-void
.end method

.method static requestHideSelf(Landroid/inputmethodservice/InputMethodService;)Z
    .locals 2
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v1, 0x0

    .line 2860
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2861
    :cond_0
    return v1
.end method

.method static unbindInputEnter(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2765
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    .line 2763
    return-void
.end method

.method static unbindInputExit(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2771
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeMethodFlags:I

    .line 2769
    return-void
.end method

.method private static updateCoverHeight(Landroid/inputmethodservice/InputMethodService;)V
    .locals 7
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2795
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2796
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 2797
    .local v2, "insets":Landroid/inputmethodservice/InputMethodService$Insets;
    invoke-static {p0, v2}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->computeCoverHeight(Landroid/inputmethodservice/InputMethodService;Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 2798
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2799
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    sub-int v1, v3, v4

    .line 2800
    .local v1, "height":I
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/16 v6, 0x51

    invoke-direct {v4, v5, v1, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4}, Landroid/widget/ViewAnimator;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2794
    return-void
.end method

.method static updateCoverHeightIfNeeded(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 2758
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2759
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->updateCoverHeight(Landroid/inputmethodservice/InputMethodService;)V

    .line 2757
    :cond_0
    return-void
.end method

.method private static updateCoverView(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V
    .locals 7
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;
    .param p1, "privateImeOptions"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 2891
    const/4 v1, 0x0

    .line 2892
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->getFlymePrivateImeOptionsMap(Landroid/inputmethodservice/InputMethodService;)Ljava/util/Map;

    move-result-object v3

    .line 2893
    .local v3, "privateImeOptionsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1, v3}, Landroid/view/inputmethod/EditorInfo;->splitPrivateImeOptions(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2894
    const/4 v4, 0x0

    .local v4, "whichChild":I
    :goto_0
    sget-object v5, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->sCoverChildMap:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 2895
    sget-object v5, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->sCoverChildMap:[Ljava/lang/String;

    aget-object v2, v5, v4

    .line 2896
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2897
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v4}, Landroid/widget/ViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2898
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Lcom/meizu/widget/inputmethod/CoverView;

    if-eqz v5, :cond_2

    move-object v1, v0

    .line 2899
    check-cast v1, Lcom/meizu/widget/inputmethod/CoverView;

    .line 2903
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    :goto_1
    if-eqz v1, :cond_0

    .line 2904
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/meizu/widget/inputmethod/CoverView;->onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 2905
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v5}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 2906
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v5, v4}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 2914
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "whichChild":I
    :cond_0
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    if-eq v5, v1, :cond_1

    .line 2915
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    invoke-virtual {v5, v6, v6}, Lcom/meizu/widget/inputmethod/CoverView;->onPrivateImeOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 2917
    :cond_1
    iput-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    .line 2890
    return-void

    .line 2901
    .restart local v0    # "child":Landroid/view/View;
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "whichChild":I
    :cond_2
    sget v5, Lcom/flyme/internal/R$id;->input_method_cover_view:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    check-cast v1, Lcom/meizu/widget/inputmethod/CoverView;

    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    goto :goto_1

    .line 2894
    .end local v0    # "child":Landroid/view/View;
    .local v1, "coverView":Lcom/meizu/widget/inputmethod/CoverView;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method static updateCoverViewShown(Landroid/inputmethodservice/InputMethodService;)V
    .locals 3
    .param p0, "ims"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    const/4 v2, 0x0

    .line 2875
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-nez v1, :cond_2

    .line 2876
    invoke-static {p0, v2}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->updateCoverView(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    .line 2880
    :goto_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

    if-nez v1, :cond_3

    const/16 v0, 0x8

    .line 2881
    .local v0, "visibility":I
    :goto_1
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2882
    if-nez v0, :cond_0

    .line 2883
    invoke-static {p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->updateCoverHeight(Landroid/inputmethodservice/InputMethodService;)V

    .line 2885
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v1, v0}, Landroid/widget/ViewAnimator;->setVisibility(I)V

    .line 2886
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mFlymeCoverFrame:Landroid/widget/ViewAnimator;

    invoke-virtual {v1}, Landroid/widget/ViewAnimator;->bringToFront()V

    .line 2874
    :cond_1
    return-void

    .line 2878
    .end local v0    # "visibility":I
    :cond_2
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->updateCoverView(Landroid/inputmethodservice/InputMethodService;Ljava/lang/String;)V

    goto :goto_0

    .line 2880
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "visibility":I
    goto :goto_1
.end method

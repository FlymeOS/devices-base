.class public Landroid/inputmethodservice/InputMethodService;
.super Landroid/inputmethodservice/AbstractInputMethodService;
.source "InputMethodService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/InputMethodService$FlymeInjector;,
        Landroid/inputmethodservice/InputMethodService$InputMethodImpl;,
        Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;,
        Landroid/inputmethodservice/InputMethodService$Insets;,
        Landroid/inputmethodservice/InputMethodService$1;,
        Landroid/inputmethodservice/InputMethodService$2;
    }
.end annotation


# static fields
.field public static final BACK_DISPOSITION_DEFAULT:I = 0x0

.field public static final BACK_DISPOSITION_WILL_DISMISS:I = 0x2

.field public static final BACK_DISPOSITION_WILL_NOT_DISMISS:I = 0x1

.field static final DEBUG:Z = false

.field public static final IME_ACTIVE:I = 0x1

.field public static final IME_VISIBLE:I = 0x2

.field static final MOVEMENT_DOWN:I = -0x1

.field static final MOVEMENT_UP:I = -0x2

.field static final TAG:Ljava/lang/String; = "InputMethodService"


# instance fields
.field mFlymeCoverFrame:Landroid/widget/ViewAnimator;

.field mFlymeCoverView:Lcom/meizu/widget/inputmethod/CoverView;

.field mFlymeHandler:Landroid/os/Handler;

.field mFlymeMethodFlags:I

.field mFlymePrivateImeOptionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field mBackDisposition:I

.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mCandidatesViewStarted:Z

.field mCandidatesVisibility:I

.field mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field mExtractAccessories:Landroid/view/ViewGroup;

.field mExtractAction:Landroid/widget/Button;

.field mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field mExtractFrame:Landroid/widget/FrameLayout;

.field mExtractView:Landroid/view/View;

.field mExtractViewHidden:Z

.field mExtractedText:Landroid/view/inputmethod/ExtractedText;

.field mExtractedToken:I

.field mFullscreenApplied:Z

.field mFullscreenArea:Landroid/view/ViewGroup;

.field mHardwareAccelerated:Z

.field mImm:Landroid/view/inputmethod/InputMethodManager;

.field mInShowWindow:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mInitialized:Z

.field mInputBinding:Landroid/view/inputmethod/InputBinding;

.field mInputConnection:Landroid/view/inputmethod/InputConnection;

.field mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field mInputFrame:Landroid/widget/FrameLayout;

.field mInputStarted:Z

.field mInputView:Landroid/view/View;

.field mInputViewStarted:Z

.field final mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

.field mIsFullscreen:Z

.field mIsInputViewShown:Z

.field mLastShowInputRequested:Z

.field mRootView:Landroid/view/View;

.field mShouldClearInsetOfPreviousIme:Z

.field mShowInputFlags:I

.field mShowInputForced:Z

.field mShowInputRequested:Z

.field mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

.field mStatusIcon:I

.field mTheme:I

.field mThemeAttrs:Landroid/content/res/TypedArray;

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I

.field mToken:Landroid/os/IBinder;

.field mWindow:Landroid/inputmethodservice/SoftInputWindow;

.field mWindowAdded:Z

.field mWindowCreated:Z

.field mWindowVisible:Z

.field mWindowWasVisible:Z


# direct methods
.method static synthetic -wrap0(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->clearInsetOfPreviousIme()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/inputmethodservice/InputMethodService;II)V
    .locals 0
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onToggleSoftInput(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 224
    invoke-direct {p0}, Landroid/inputmethodservice/AbstractInputMethodService;-><init>()V

    .line 257
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 258
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    .line 317
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 318
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 321
    new-instance v0, Landroid/inputmethodservice/InputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$1;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    .line 320
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 341
    new-instance v0, Landroid/inputmethodservice/InputMethodService$2;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$2;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 224
    return-void
.end method

.method private clearInsetOfPreviousIme()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1567
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 1572
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 1573
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v1}, Landroid/inputmethodservice/SoftInputWindow;->hide()V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    :goto_0
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    .line 1564
    return-void

    .line 1574
    :catch_0
    move-exception v0

    .line 1576
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1577
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    goto :goto_0
.end method

.method private doHideWindow()V
    .locals 4

    .prologue
    .line 1529
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1530
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 1528
    return-void
.end method

.method private finishViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1517
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_1

    .line 1519
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1524
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1525
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1516
    return-void

    .line 1520
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    .line 1522
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method private getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    .prologue
    .line 1828
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0

    .line 1829
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleBack(Z)Z
    .locals 3
    .param p1, "doIt"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1802
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_1

    .line 1805
    if-eqz p1, :cond_0

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 1806
    :cond_0
    return v2

    .line 1807
    :cond_1
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_4

    .line 1808
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_3

    .line 1811
    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 1818
    :cond_2
    :goto_0
    return v2

    .line 1816
    :cond_3
    if-eqz p1, :cond_2

    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    .line 1820
    :cond_4
    return v1
.end method

.method private onToggleSoftInput(II)V
    .locals 1
    .param p1, "showFlags"    # I
    .param p2, "hideFlags"    # I

    .prologue
    .line 1946
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1947
    invoke-virtual {p0, p2}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 1944
    :goto_0
    return-void

    .line 1949
    :cond_0
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestShowSelf(I)V

    goto :goto_0
.end method

.method private requestShowSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 1798
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1797
    return-void
.end method


# virtual methods
.method doFinishInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1620
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-eqz v0, :cond_2

    .line 1622
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1627
    :cond_0
    :goto_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1628
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1629
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v0, :cond_1

    .line 1631
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 1633
    :cond_1
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1634
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1635
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1619
    return-void

    .line 1623
    :cond_2
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-eqz v0, :cond_0

    .line 1625
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    goto :goto_0
.end method

.method doMovementKey(ILandroid/view/KeyEvent;I)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "count"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1976
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v1

    .line 1977
    .local v1, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v1, :cond_3

    .line 1981
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v3

    .line 1982
    .local v3, "movement":Landroid/text/method/MovementMethod;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1983
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1986
    const/4 v5, -0x1

    if-ne p3, v5, :cond_0

    .line 1988
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1987
    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1989
    invoke-virtual {p0, p1, v6}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 1990
    return v6

    .line 1992
    :cond_0
    const/4 v5, -0x2

    if-ne p3, v5, :cond_1

    .line 1994
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 1993
    invoke-interface {v3, v1, v5, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1995
    return v6

    .line 1998
    :cond_1
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v3, v1, v5, p2}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1999
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    .line 2020
    :cond_2
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 2029
    .end local v2    # "layout":Landroid/text/Layout;
    .end local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_3
    return v7

    .line 2001
    .restart local v2    # "layout":Landroid/text/Layout;
    .restart local v3    # "movement":Landroid/text/method/MovementMethod;
    :cond_4
    invoke-static {p2, v7}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 2003
    .local v0, "down":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2002
    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2004
    invoke-static {p2, v6}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v4

    .line 2006
    .local v4, "up":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2005
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2007
    :goto_1
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_5

    .line 2009
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2008
    invoke-interface {v3, v1, v5, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 2011
    invoke-virtual {v1}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    .line 2010
    invoke-interface {v3, v1, v5, p1, v4}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 2013
    :cond_5
    invoke-virtual {p0, p1, p3}, Landroid/inputmethodservice/InputMethodService;->reportExtractedMovement(II)V

    goto :goto_0

    .line 2025
    .end local v0    # "down":Landroid/view/KeyEvent;
    .end local v4    # "up":Landroid/view/KeyEvent;
    :pswitch_0
    return v6

    .line 2020
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 2
    .param p1, "ic"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "restarting"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1639
    if-nez p3, :cond_0

    .line 1640
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 1642
    :cond_0
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    .line 1643
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 1644
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1645
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1647
    invoke-virtual {p0, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->removeHideSelfMessage(Landroid/inputmethodservice/InputMethodService;)V

    .line 1648
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_flyme_0

    .line 1649
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v0, :cond_2

    .line 1651
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1652
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1653
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1638
    :cond_1
    :goto_0

    invoke-static/range {p0 .. p2}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->hideInputDelayIfNeeded(Landroid/inputmethodservice/InputMethodService;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    :cond_flyme_0

    return-void

    .line 1654
    :cond_2
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v0, :cond_1

    .line 1656
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1657
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v0, p3}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2431
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 2432
    .local v0, "p":Landroid/util/Printer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Input method service state for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mWindowCreated="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2434
    const-string/jumbo v2, " mWindowAdded="

    .line 2433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2434
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 2433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mWindowVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2436
    const-string/jumbo v2, " mWindowWasVisible="

    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2436
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2437
    const-string/jumbo v2, " mInShowWindow="

    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2437
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 2435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  Configuration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputBinding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mStartedInputConnection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mInputStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2444
    const-string/jumbo v2, " mInputViewStarted="

    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2444
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2445
    const-string/jumbo v2, " mCandidatesViewStarted="

    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2445
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 2443
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2447
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_0

    .line 2448
    const-string/jumbo v1, "  mInputEditorInfo:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2449
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/EditorInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 2454
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mShowInputRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2455
    const-string/jumbo v2, " mLastShowInputRequested="

    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2455
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2456
    const-string/jumbo v2, " mShowInputForced="

    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2456
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2457
    const-string/jumbo v2, " mShowInputFlags=0x"

    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2457
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2454
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mCandidatesVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2459
    const-string/jumbo v2, " mFullscreenApplied="

    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2459
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2460
    const-string/jumbo v2, " mIsFullscreen="

    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2460
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2461
    const-string/jumbo v2, " mExtractViewHidden="

    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2461
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 2458
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2463
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v1, :cond_1

    .line 2464
    const-string/jumbo v1, "  mExtractedText:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2465
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    text="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget-object v2, v2, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " chars"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2466
    const-string/jumbo v2, " startOffset="

    .line 2465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2466
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 2465
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "    selectionStart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2468
    const-string/jumbo v2, " selectionEnd="

    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2468
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2469
    const-string/jumbo v2, " flags=0x"

    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2469
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v2, Landroid/view/inputmethod/ExtractedText;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 2467
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2473
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mExtractedToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mIsInputViewShown="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2475
    const-string/jumbo v2, " mStatusIcon="

    .line 2474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2475
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 2474
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2476
    const-string/jumbo v1, "Last computed insets:"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  contentTopInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2478
    const-string/jumbo v2, " visibleTopInsets="

    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2478
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2479
    const-string/jumbo v2, " touchableInsets="

    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2479
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2480
    const-string/jumbo v2, " touchableRegion="

    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2480
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    iget-object v2, v2, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    .line 2477
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mShouldClearInsetOfPreviousIme="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 2430
    return-void

    .line 2451
    :cond_0
    const-string/jumbo v1, "  mInputEditorInfo: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2471
    :cond_1
    const-string/jumbo v1, "  mExtractedText: null"

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public enableHardwareAcceleration()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 662
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 663
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 665
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    .line 667
    return v1

    .line 669
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getBackDisposition()I
    .locals 1

    .prologue
    .line 854
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    return v0
.end method

.method public getCandidatesHiddenVisibility()I
    .locals 1

    .prologue
    .line 1192
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public getCurrentInputBinding()Landroid/view/inputmethod/InputBinding;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputBinding:Landroid/view/inputmethod/InputBinding;

    return-object v0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mStartedInputConnection:Landroid/view/inputmethod/InputConnection;

    .line 892
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 893
    return-object v0

    .line 895
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputConnection:Landroid/view/inputmethod/InputConnection;

    return-object v1
.end method

.method public getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    return-object v0
.end method

.method public getCurrentInputStarted()Z
    .locals 1

    .prologue
    .line 899
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    return v0
.end method

.method public getInputMethodWindowRecommendedHeight()I
    .locals 1

    .prologue
    .line 2423
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 842
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getMaxWidth()I
    .locals 2

    .prologue
    .line 874
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 875
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    return v1
.end method

.method public getTextForImeAction(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 2248
    and-int/lit16 v0, p1, 0xff

    packed-switch v0, :pswitch_data_0

    .line 2264
    const v0, 0x1040422

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2250
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    .line 2252
    :pswitch_1
    const v0, 0x104041c

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2254
    :pswitch_2
    const v0, 0x104041d

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2256
    :pswitch_3
    const v0, 0x104041e

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2258
    :pswitch_4
    const v0, 0x104041f

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2260
    :pswitch_5
    const v0, 0x1040420

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2262
    :pswitch_6
    const v0, 0x1040421

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 2248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    return-object v0
.end method

.method public hideStatusIcon()V
    .locals 2

    .prologue
    .line 1201
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1202
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideStatusIcon(Landroid/os/IBinder;)V

    .line 1200
    return-void
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1534
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->finishViews()V

    .line 1535
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->hide()V

    .line 1537
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1538
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 1539
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1533
    :cond_0
    return-void
.end method

.method initViews()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 714
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 715
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 716
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 717
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 719
    sget-object v0, Landroid/R$styleable;->InputMethodService:[I

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    .line 720
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 721
    const v1, 0x1090069

    .line 720
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 722
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    .line 723
    const/16 v1, 0x300

    .line 722
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 724
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/SoftInputWindow;->setContentView(Landroid/view/View;)V

    .line 725
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 726
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 727
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 728
    const-string/jumbo v1, "fancy_ime_animations"

    .line 727
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 730
    const v1, 0x10302e7

    .line 729
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 732
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 733
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 734
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    .line 735
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 736
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 737
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 738
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 739
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 741
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 742
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    const v1, 0x102001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    .line 743
    iput-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 744
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 746
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 747
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 748
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->initFlymeCoverViews(Landroid/inputmethodservice/InputMethodService;)V

    .line 713
    return-void
.end method

.method initialize()V
    .locals 1

    .prologue
    .line 707
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    if-nez v0, :cond_0

    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInitialized:Z

    .line 709
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 706
    :cond_0
    return-void
.end method

.method public isExtractViewShown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1039
    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 989
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v0
.end method

.method public isInputViewShown()Z
    .locals 1

    .prologue
    .line 1138
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowInputRequested()Z
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1938
    return-void
.end method

.method public onBindInput()V
    .locals 0

    .prologue
    .line 1589
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 4
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;

    .prologue
    const/4 v3, 0x1

    .line 1080
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mTmpLocation:[I

    .line 1081
    .local v1, "loc":[I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 1082
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1087
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1090
    .local v0, "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 1094
    .end local v0    # "decor":Landroid/view/View;
    :goto_1
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 1097
    :cond_0
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 1098
    const/4 v2, 0x2

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableInsets:I

    .line 1099
    iget-object v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v2}, Landroid/graphics/Region;->setEmpty()V

    .line 1079
    return-void

    .line 1084
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1085
    .restart local v0    # "decor":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    aput v2, v1, v3

    goto :goto_0

    .line 1092
    .end local v0    # "decor":Landroid/view/View;
    :cond_2
    aget v2, v1, v3

    iput v2, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 783
    invoke-super {p0, p1}, Landroid/inputmethodservice/AbstractInputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 785
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 786
    .local v4, "visible":Z
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputFlags:I

    .line 787
    .local v1, "showFlags":I
    iget-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 788
    .local v3, "showingInput":Z
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 789
    .local v0, "completions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 790
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 791
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 792
    iget-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v6, :cond_0

    .line 793
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v6

    .line 794
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    .line 793
    invoke-virtual {p0, v6, v7, v8}, Landroid/inputmethodservice/InputMethodService;->doStartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Z)V

    .line 796
    :cond_0
    if-eqz v4, :cond_3

    .line 797
    if-eqz v3, :cond_5

    .line 799
    invoke-virtual {p0, v1, v8}, Landroid/inputmethodservice/InputMethodService;->onShowInputRequested(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 800
    invoke-virtual {p0, v8}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 801
    if-eqz v0, :cond_1

    .line 802
    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCurCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 803
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 817
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v2

    .line 818
    .local v2, "showing":Z
    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    if-eqz v2, :cond_2

    const/4 v5, 0x2

    :cond_2
    or-int/lit8 v5, v5, 0x1

    .line 819
    iget v8, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 818
    invoke-virtual {v6, v7, v5, v8}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 782
    .end local v2    # "showing":Z
    :cond_3
    return-void

    .line 806
    :cond_4
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0

    .line 808
    :cond_5
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v6, :cond_6

    .line 811
    invoke-virtual {p0, v5}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    goto :goto_0

    .line 814
    :cond_6
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 5
    .param p1, "win"    # Landroid/view/Window;
    .param p2, "isFullscreen"    # Z
    .param p3, "isCandidatesOnly"    # Z

    .prologue
    .line 974
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 975
    .local v0, "currentHeight":I
    if-eqz p2, :cond_1

    const/4 v1, -0x1

    .line 976
    .local v1, "newHeight":I
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 977
    const-string/jumbo v2, "InputMethodService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Window size has been changed. This may cause jankiness of resizing window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 978
    const-string/jumbo v4, " -> "

    .line 977
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v2}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setLayout(II)V

    .line 973
    return-void

    .line 975
    .end local v1    # "newHeight":I
    :cond_1
    const/4 v1, -0x2

    .restart local v1    # "newHeight":I
    goto :goto_0
.end method

.method public onCreate()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    sget v4, Lcom/flyme/internal/R$style;->Theme_Flyme_InputMethod:I

    const/4 v9, 0x0

    .line 673
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 674
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 675
    const v2, 0x1030054

    .line 676
    const v3, 0x103007f

    move v5, v4

    .line 673
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    move-result v0

    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 679
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    invoke-super {p0, v0}, Landroid/inputmethodservice/AbstractInputMethodService;->setTheme(I)V

    .line 680
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreate()V

    .line 681
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 684
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodWindowVisibleHeight()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    .line 686
    const-string/jumbo v0, "layout_inflater"

    .line 685
    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 687
    new-instance v0, Landroid/inputmethodservice/SoftInputWindow;

    const-string/jumbo v2, "InputMethod"

    iget v3, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    iget-object v6, p0, Landroid/inputmethodservice/InputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    .line 688
    const/16 v7, 0x7db

    const/16 v8, 0x50

    move-object v1, p0

    move-object v4, v10

    move-object v5, v10

    .line 687
    invoke-direct/range {v0 .. v9}, Landroid/inputmethodservice/SoftInputWindow;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/inputmethodservice/SoftInputWindow$Callback;Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;IIZ)V

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    .line 689
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mHardwareAccelerated:Z

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 692
    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initViews()V

    .line 693
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->initFlymeExtraFields(Landroid/inputmethodservice/InputMethodService;)V

    .line 672
    return-void

    :cond_1
    move v0, v9

    .line 684
    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1289
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1274
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInflater:Landroid/view/LayoutInflater;

    .line 1275
    const v1, 0x109006a

    const/4 v2, 0x0

    .line 1274
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
    .locals 1

    .prologue
    .line 829
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    .locals 1

    .prologue
    .line 838
    new-instance v0, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/InputMethodService$InputMethodSessionImpl;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1304
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCurrentInputMethodSubtypeChanged(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 0
    .param p1, "newSubtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 2399
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 753
    invoke-super {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onDestroy()V

    .line 754
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 755
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInsetsComputer:Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;

    .line 754
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 756
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->doFinishInput()V

    .line 757
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 762
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v0}, Landroid/inputmethodservice/SoftInputWindow;->dismiss()V

    .line 752
    :cond_0
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 1690
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1001
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1002
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 1003
    return v3

    .line 1005
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v1, :cond_1

    .line 1006
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1007
    return v3

    .line 1009
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->onEvaluateFullscreenMode(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v1

    if-eqz v1, :cond_flyme_0

    iget-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    return v1

    :cond_flyme_0

    const/4 v1, 0x1

    return v1
.end method

.method public onEvaluateInputViewShown()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1150
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1151
    .local v0, "config":Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v1, :cond_0

    .line 1152
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1151
    :cond_0
    :goto_0
    return v1

    .line 1152
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onExtractTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 2229
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2230
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2231
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 2233
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onExtractedCursorMovement(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v1, 0x0

    .line 2212
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 2213
    :cond_0
    return-void

    .line 2215
    :cond_1
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2216
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 2211
    :cond_2
    return-void
.end method

.method public onExtractedDeleteText(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2151
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2152
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2153
    invoke-interface {v0, p1, p1}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2154
    sub-int v1, p2, p1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2150
    :cond_0
    return-void
.end method

.method public onExtractedReplaceText(IILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 2162
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2163
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2164
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2165
    const/4 v1, 0x1

    invoke-interface {v0, p3, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2161
    :cond_0
    return-void
.end method

.method public onExtractedSelectionChanged(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 2141
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2142
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2143
    invoke-interface {v0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 2140
    :cond_0
    return-void
.end method

.method public onExtractedSetSpan(Ljava/lang/Object;III)V
    .locals 6
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x1

    .line 2173
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2174
    .local v0, "conn":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 2175
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2176
    :cond_0
    invoke-interface {v0, v5}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2177
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spannable;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 2178
    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2179
    invoke-interface {v0, p2, p3}, Landroid/view/inputmethod/InputConnection;->setComposingRegion(II)Z

    .line 2180
    invoke-interface {v0, v1, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 2172
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method public onExtractedTextClicked()V
    .locals 1

    .prologue
    .line 2193
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_0

    .line 2194
    return-void

    .line 2196
    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->hasVerticalScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2197
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 2192
    :cond_1
    return-void
.end method

.method public onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    .line 2340
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    .line 2341
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2339
    :cond_0
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1381
    if-nez p1, :cond_0

    .line 1382
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1383
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1384
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1380
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 1

    .prologue
    .line 1675
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1676
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1677
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1674
    :cond_0
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 1336
    if-nez p1, :cond_0

    .line 1337
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1338
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 1339
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1335
    .end local v0    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1935
    const/4 v0, 0x0

    return v0
.end method

.method public onInitializeInterface()V
    .locals 0

    .prologue
    .line 702
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1848
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1849
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 1850
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    return v4

    .line 1853
    :cond_0

    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->isImeInterceptBackKey(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v1

    if-nez v1, :cond_flyme_0

    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->handleBack(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v1

    return v1

    :cond_flyme_0

    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1854
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1855
    return v4

    .line 1857
    :cond_1
    return v3

    .line 1859
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1868
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1884
    invoke-virtual {p0, p1, p3, p2}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    .line 1900
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1901
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->getExtractEditTextIfVisible()Landroid/inputmethodservice/ExtractEditText;

    move-result-object v0

    .line 1902
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->handleBackInTextActionModeIfNeeded(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1903
    return v3

    .line 1905
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1909
    .end local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_1
    const/4 v1, -0x2

    invoke-virtual {p0, p1, p2, v1}, Landroid/inputmethodservice/InputMethodService;->doMovementKey(ILandroid/view/KeyEvent;I)Z

    move-result v1

    return v1

    .line 1906
    .restart local v0    # "eet":Landroid/inputmethodservice/ExtractEditText;
    :cond_2
    invoke-direct {p0, v3}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v1

    return v1
.end method

.method public onShowInputRequested(IZ)Z
    .locals 4
    .param p1, "flags"    # I
    .param p2, "configChange"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1405
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1406
    return v2

    .line 1408
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_2

    .line 1409
    if-nez p2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1415
    return v2

    .line 1417
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1418
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v3, :cond_2

    .line 1422
    return v2

    .line 1425
    .end local v0    # "config":Landroid/content/res/Configuration;
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 1426
    iput-boolean v3, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputForced:Z

    .line 1428
    :cond_3
    return v3
.end method

.method public onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1363
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1615
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 0
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    .line 1318
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1922
    const/4 v0, 0x0

    return v0
.end method

.method public onUnbindInput()V
    .locals 0

    .prologue
    .line 1599
    return-void
.end method

.method public onUpdateCursor(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "newCursor"    # Landroid/graphics/Rect;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1763
    return-void
.end method

.method public onUpdateCursorAnchorInfo(Landroid/view/inputmethod/CursorAnchorInfo;)V
    .locals 0
    .param p1, "cursorAnchorInfo"    # Landroid/view/inputmethod/CursorAnchorInfo;

    .prologue
    .line 1774
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 1701
    iget v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    if-eq v0, p1, :cond_0

    .line 1702
    return-void

    .line 1704
    :cond_0
    if-eqz p2, :cond_1

    .line 1705
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_1

    .line 1706
    iput-object p2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 1707
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V

    .line 1700
    :cond_1
    return-void
.end method

.method public onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V
    .locals 5
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2304
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2305
    return-void

    .line 2308
    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 2309
    return-void

    .line 2311
    :cond_1
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_3

    .line 2312
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    .line 2313
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-nez v1, :cond_5

    .line 2314
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    .line 2315
    .local v0, "hasAction":Z
    :goto_0
    if-eqz v0, :cond_7

    .line 2316
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2317
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 2318
    iget-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-eqz v1, :cond_6

    .line 2319
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2323
    :goto_1
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2303
    :cond_2
    :goto_2
    return-void

    .line 2311
    .end local v0    # "hasAction":Z
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "hasAction":Z
    goto :goto_0

    .line 2314
    .end local v0    # "hasAction":Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hasAction":Z
    goto :goto_0

    .line 2311
    .end local v0    # "hasAction":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "hasAction":Z
    goto :goto_0

    .line 2321
    :cond_6
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->getTextForImeAction(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2326
    :cond_7
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2327
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v1, :cond_2

    .line 2328
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method public onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1, "ei"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v2, 0x0

    .line 2278
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    .line 2279
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 2281
    :cond_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2282
    return-void

    .line 2285
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->setExtractViewShown(Z)V

    .line 2277
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 1729
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1730
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v3, :cond_2

    .line 1731
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    iget v2, v3, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1732
    .local v2, "off":I
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 1733
    sub-int/2addr p3, v2

    .line 1734
    sub-int/2addr p4, v2

    .line 1735
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    .line 1736
    .local v1, "len":I
    if-gez p3, :cond_3

    const/4 p3, 0x0

    .line 1738
    :cond_0
    :goto_0
    if-gez p4, :cond_4

    const/4 p4, 0x0

    .line 1740
    :cond_1
    :goto_1
    invoke-virtual {v0, p3, p4}, Landroid/inputmethodservice/ExtractEditText;->setSelection(II)V

    .line 1741
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 1728
    .end local v1    # "len":I
    .end local v2    # "off":I
    :cond_2
    return-void

    .line 1737
    .restart local v1    # "len":I
    .restart local v2    # "off":I
    :cond_3
    if-le p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    .line 1739
    :cond_4
    if-le p4, v1, :cond_1

    move p4, v1

    goto :goto_1
.end method

.method public onViewClicked(Z)V
    .locals 0
    .param p1, "focusChanged"    # Z

    .prologue
    .line 1752
    return-void
.end method

.method public onWindowHidden()V
    .locals 0

    .prologue
    .line 1556
    return-void
.end method

.method public onWindowShown()V
    .locals 0

    .prologue
    .line 1548
    return-void
.end method

.method reportExtractedMovement(II)V
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "count"    # I

    .prologue
    .line 1957
    const/4 v0, 0x0

    .local v0, "dx":I
    const/4 v1, 0x0

    .line 1958
    .local v1, "dy":I
    packed-switch p1, :pswitch_data_0

    .line 1972
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractedCursorMovement(II)V

    .line 1956
    return-void

    .line 1960
    :pswitch_0
    neg-int v0, p2

    .line 1961
    goto :goto_0

    .line 1963
    :pswitch_1
    move v0, p2

    .line 1964
    goto :goto_0

    .line 1966
    :pswitch_2
    neg-int v1, p2

    .line 1967
    goto :goto_0

    .line 1969
    :pswitch_3
    move v1, p2

    .line 1970
    goto :goto_0

    .line 1958
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public requestHideSelf(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue

    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->requestHideSelf(Landroid/inputmethodservice/InputMethodService;)Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    .line 1787
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 1786
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 6
    .param p1, "fromEnterKey"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2080
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 2081
    .local v0, "ei":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    .line 2082
    if-eqz p1, :cond_0

    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2083
    const/high16 v3, 0x40000000    # 2.0f

    .line 2082
    and-int/2addr v2, v3

    if-nez v2, :cond_2

    .line 2084
    :cond_0
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v5, :cond_2

    .line 2089
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2090
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 2091
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 2093
    :cond_1
    return v5

    .line 2096
    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v4
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 13
    .param p1, "keyEventCode"    # I

    .prologue
    .line 2052
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2053
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    return-void

    .line 2054
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2055
    .local v2, "eventTime":J
    new-instance v1, Landroid/view/KeyEvent;

    .line 2056
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 2057
    const/4 v12, 0x6

    move-wide v4, v2

    move v7, p1

    .line 2055
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2058
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 2059
    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    .line 2060
    const/4 v12, 0x6

    move v7, p1

    .line 2058
    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2051
    return-void
.end method

.method public sendKeyChar(C)V
    .locals 3
    .param p1, "charCode"    # C

    .prologue
    const/4 v2, 0x1

    .line 2114
    packed-switch p1, :pswitch_data_0

    .line 2122
    const/16 v1, 0x30

    if-lt p1, v1, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    .line 2123
    add-int/lit8 v1, p1, -0x30

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 2113
    :cond_0
    :goto_0
    return-void

    .line 2116
    :pswitch_0
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2117
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 2125
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2126
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2127
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0

    .line 2114
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public setBackDisposition(I)V
    .locals 0
    .param p1, "disposition"    # I

    .prologue
    .line 850
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    .line 849
    return-void
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1247
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1248
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1249
    const/4 v2, -0x1

    .line 1250
    const/4 v3, -0x2

    .line 1248
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1246
    return-void
.end method

.method public setCandidatesViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1160
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1161
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eq v0, p1, :cond_0

    .line 1165
    if-eqz p1, :cond_1

    .line 1166
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;->doHideWindow()V

    goto :goto_0
.end method

.method public setExtractView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1217
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1218
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1221
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    .line 1222
    if-eqz p1, :cond_1

    .line 1224
    const v0, 0x1020025

    .line 1223
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/ExtractEditText;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1225
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    invoke-virtual {v0, p0}, Landroid/inputmethodservice/ExtractEditText;->setIME(Landroid/inputmethodservice/InputMethodService;)V

    .line 1227
    const v0, 0x1020351

    .line 1226
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    .line 1228
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1230
    const v0, 0x1020350

    .line 1229
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1232
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1216
    :goto_0
    return-void

    .line 1234
    :cond_1
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 1235
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAccessories:Landroid/view/ViewGroup;

    .line 1236
    iput-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractAction:Landroid/widget/Button;

    goto :goto_0
.end method

.method public setExtractViewShown(Z)V
    .locals 1
    .param p1, "shown"    # Z

    .prologue
    .line 1022
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-ne v0, p1, :cond_0

    .line 1023
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    .line 1024
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    .line 1021
    :cond_0
    return-void

    .line 1023
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1260
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 1261
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1262
    const/4 v2, -0x1

    .line 1263
    const/4 v3, -0x2

    .line 1261
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1264
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    .line 1259
    return-void
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 643
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    if-eqz v0, :cond_0

    .line 644
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be called before onCreate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mTheme:I

    .line 642
    return-void
.end method

.method public showStatusIcon(I)V
    .locals 3
    .param p1, "iconResId"    # I

    .prologue
    .line 1196
    iput p1, p0, Landroid/inputmethodservice/InputMethodService;->mStatusIcon:I

    .line 1197
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroid/view/inputmethod/InputMethodManager;->showStatusIcon(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 1195
    return-void
.end method

.method public showWindow(Z)V
    .locals 3
    .param p1, "showInput"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1439
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    if-eqz v0, :cond_0

    .line 1440
    const-string/jumbo v0, "InputMethodService"

    const-string/jumbo v1, "Re-entrance in to showWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    return-void

    .line 1445
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1446
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1447
    invoke-virtual {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindowInner(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1449
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1450
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1431
    return-void

    .line 1448
    :catchall_0
    move-exception v0

    .line 1449
    iput-boolean v1, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    .line 1450
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mInShowWindow:Z

    .line 1448
    throw v0
.end method

.method showWindowInner(Z)V
    .locals 9
    .param p1, "showInput"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1455
    const/4 v0, 0x0

    .line 1457
    .local v0, "doShowInput":Z
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v4, :cond_6

    move v4, v5

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v7

    if-eqz v7, :cond_7

    move v7, v8

    :goto_1
    or-int v2, v4, v7

    .line 1458
    .local v2, "previousImeWindowStatus":I
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    .line 1459
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-nez v4, :cond_8

    .line 1460
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputStarted:Z

    if-eqz v4, :cond_0

    .line 1461
    if-eqz p1, :cond_0

    .line 1462
    const/4 v0, 0x1

    .line 1463
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    .line 1471
    .end local p1    # "showInput":Z
    :cond_0
    :goto_2
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1472
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 1473
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 1475
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    if-eqz v4, :cond_9

    .line 1486
    :cond_1
    :goto_3
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v4, :cond_a

    .line 1487
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    if-nez v4, :cond_2

    .line 1489
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mInputViewStarted:Z

    .line 1490
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1498
    :cond_2
    :goto_4
    if-eqz v0, :cond_3

    .line 1499
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 1502
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/inputmethodservice/InputMethodService$FlymeInjector;->updateCoverViewShown(Landroid/inputmethodservice/InputMethodService;)V

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v4

    if-eqz v4, :cond_b

    :goto_5
    or-int/lit8 v1, v8, 0x1

    .line 1503
    .local v1, "nextImeWindowStatus":I
    if-eq v2, v1, :cond_4

    .line 1504
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    iget v7, p0, Landroid/inputmethodservice/InputMethodService;->mBackDisposition:I

    invoke-virtual {v4, v5, v1, v7}, Landroid/view/inputmethod/InputMethodManager;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 1506
    :cond_4
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_5

    .line 1508
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 1509
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v4}, Landroid/inputmethodservice/SoftInputWindow;->show()V

    .line 1512
    iput-boolean v6, p0, Landroid/inputmethodservice/InputMethodService;->mShouldClearInsetOfPreviousIme:Z

    .line 1454
    :cond_5
    return-void

    .end local v1    # "nextImeWindowStatus":I
    .end local v2    # "previousImeWindowStatus":I
    .restart local p1    # "showInput":Z
    :cond_6
    move v4, v6

    .line 1457
    goto :goto_0

    :cond_7
    move v7, v6

    goto :goto_1

    .line 1467
    .restart local v2    # "previousImeWindowStatus":I
    :cond_8
    const/4 p1, 0x1

    .local p1, "showInput":Z
    goto :goto_2

    .line 1476
    .end local p1    # "showInput":Z
    :cond_9
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowAdded:Z

    .line 1477
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindowCreated:Z

    .line 1478
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1480
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateCandidatesView()Landroid/view/View;

    move-result-object v3

    .line 1482
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_1

    .line 1483
    invoke-virtual {p0, v3}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    goto :goto_3

    .line 1492
    .end local v3    # "v":Landroid/view/View;
    :cond_a
    iget-boolean v4, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    if-nez v4, :cond_2

    .line 1494
    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesViewStarted:Z

    .line 1495
    iget-object v4, p0, Landroid/inputmethodservice/InputMethodService;->mInputEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-virtual {p0, v4, v6}, Landroid/inputmethodservice/InputMethodService;->onStartCandidatesView(Landroid/view/inputmethod/EditorInfo;Z)V

    goto :goto_4

    :cond_b
    move v8, v6

    .line 1502
    goto :goto_5
.end method

.method startExtractingText(Z)V
    .locals 9
    .param p1, "inputChanged"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2346
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 2347
    .local v0, "eet":Landroid/inputmethodservice/ExtractEditText;
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputStarted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2348
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v6

    .line 2347
    if-eqz v6, :cond_3

    .line 2349
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    .line 2350
    new-instance v4, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v4}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 2351
    .local v4, "req":Landroid/view/inputmethod/ExtractedTextRequest;
    iget v6, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedToken:I

    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    .line 2352
    iput v8, v4, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    .line 2353
    const/16 v6, 0xa

    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    .line 2354
    const/16 v6, 0x2710

    iput v6, v4, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    .line 2355
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2356
    .local v2, "ic":Landroid/view/inputmethod/InputConnection;
    if-nez v2, :cond_4

    :goto_0
    iput-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2358
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 2359
    :cond_0
    const-string/jumbo v5, "InputMethodService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unexpected null in startExtractingText : mExtractedText = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2360
    iget-object v7, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 2359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2360
    const-string/jumbo v7, ", input connection = "

    .line 2359
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2365
    .local v1, "ei":Landroid/view/inputmethod/EditorInfo;
    :try_start_0
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->startInternalChanges()V

    .line 2366
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingVisibility(Landroid/view/inputmethod/EditorInfo;)V

    .line 2367
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractingViews(Landroid/view/inputmethod/EditorInfo;)V

    .line 2368
    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2369
    .local v3, "inputType":I
    and-int/lit8 v5, v3, 0xf

    if-ne v5, v8, :cond_2

    .line 2371
    const/high16 v5, 0x40000

    and-int/2addr v5, v3

    if-eqz v5, :cond_2

    .line 2372
    const/high16 v5, 0x20000

    or-int/2addr v3, v5

    .line 2375
    :cond_2
    invoke-virtual {v0, v3}, Landroid/inputmethodservice/ExtractEditText;->setInputType(I)V

    .line 2376
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 2377
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    if-eqz v5, :cond_5

    .line 2378
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2379
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2385
    :goto_1
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2388
    if-eqz p1, :cond_3

    .line 2389
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->onExtractingInputChanged(Landroid/view/inputmethod/EditorInfo;)V

    .line 2345
    .end local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .end local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "inputType":I
    .end local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_3
    return-void

    .line 2357
    .restart local v2    # "ic":Landroid/view/inputmethod/InputConnection;
    .restart local v4    # "req":Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_4
    invoke-interface {v2, v4, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v5

    goto :goto_0

    .line 2381
    .restart local v1    # "ei":Landroid/view/inputmethod/EditorInfo;
    .restart local v3    # "inputType":I
    :cond_5
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setEnabled(Z)V

    .line 2382
    const-string/jumbo v5, ""

    invoke-virtual {v0, v5}, Landroid/inputmethodservice/ExtractEditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2384
    .end local v3    # "inputType":I
    :catchall_0
    move-exception v5

    .line 2385
    invoke-virtual {v0}, Landroid/inputmethodservice/ExtractEditText;->finishInternalChanges()V

    .line 2384
    throw v5
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 1213
    iget-object v0, p0, Landroid/inputmethodservice/InputMethodService;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->setInputMethod(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 1212
    return-void
.end method

.method updateCandidatesVisibility(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 1174
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1175
    .local v0, "vis":I
    :goto_0
    iget v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-eq v1, v0, :cond_0

    .line 1176
    iget-object v1, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1177
    iput v0, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    .line 1173
    :cond_0
    return-void

    .line 1174
    .end local v0    # "vis":I
    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCandidatesHiddenVisibility()I

    move-result v0

    .restart local v0    # "vis":I
    goto :goto_0
.end method

.method updateExtractFrameVisibility()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1044
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1045
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractViewHidden:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    .line 1047
    .local v1, "vis":I
    :goto_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1052
    :goto_1
    iget v2, p0, Landroid/inputmethodservice/InputMethodService;->mCandidatesVisibility:I

    if-nez v2, :cond_3

    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroid/inputmethodservice/InputMethodService;->updateCandidatesVisibility(Z)V

    .line 1053
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowWasVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1054
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    if-nez v1, :cond_4

    :goto_3
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1058
    .local v0, "animRes":I
    if-eqz v0, :cond_0

    .line 1059
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1063
    .end local v0    # "animRes":I
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1042
    return-void

    .line 1045
    .end local v1    # "vis":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "vis":I
    goto :goto_0

    .line 1049
    .end local v1    # "vis":I
    :cond_2
    const/4 v1, 0x0

    .line 1050
    .restart local v1    # "vis":I
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mExtractFrame:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v2, v4

    .line 1052
    goto :goto_2

    .line 1056
    :cond_4
    const/4 v3, 0x2

    goto :goto_3
.end method

.method public updateFullscreenMode()V
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 915
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v2

    .line 916
    :goto_0
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    iget-boolean v8, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eq v5, v8, :cond_2

    const/4 v0, 0x1

    .line 917
    .local v0, "changed":Z
    :goto_1
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    if-ne v5, v2, :cond_3

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    if-eqz v5, :cond_3

    .line 950
    :goto_2
    if-eqz v0, :cond_0

    .line 951
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mWindow:Landroid/inputmethodservice/SoftInputWindow;

    invoke-virtual {v5}, Landroid/inputmethodservice/SoftInputWindow;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v5, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {p0, v8, v2, v5}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 952
    iget-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    iput-boolean v5, p0, Landroid/inputmethodservice/InputMethodService;->mLastShowInputRequested:Z

    .line 914
    :cond_0
    return-void

    .line 915
    .end local v0    # "changed":Z
    :cond_1
    const/4 v2, 0x0

    .local v2, "isFullscreen":Z
    goto :goto_0

    .line 916
    .end local v2    # "isFullscreen":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_1

    .line 918
    :cond_3
    const/4 v0, 0x1

    .line 919
    iput-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsFullscreen:Z

    .line 920
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 921
    .local v1, "ic":Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_4

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    .line 922
    :cond_4
    iput-boolean v7, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenApplied:Z

    .line 923
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 925
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 924
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 926
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v2, :cond_7

    .line 927
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mThemeAttrs:Landroid/content/res/TypedArray;

    invoke-virtual {v8, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 929
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 930
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 936
    :goto_4
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 937
    iget-object v8, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    .line 936
    invoke-virtual {v5, v8, v3}, Landroid/view/ViewGroup;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 938
    if-eqz v2, :cond_6

    .line 939
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mExtractView:Landroid/view/View;

    if-nez v5, :cond_5

    .line 940
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v4

    .line 941
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 942
    invoke-virtual {p0, v4}, Landroid/inputmethodservice/InputMethodService;->setExtractView(Landroid/view/View;)V

    .line 945
    .end local v4    # "v":Landroid/view/View;
    :cond_5
    invoke-virtual {p0, v6}, Landroid/inputmethodservice/InputMethodService;->startExtractingText(Z)V

    .line 947
    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->updateExtractFrameVisibility()V

    goto :goto_2

    .line 932
    :cond_7
    iget-object v5, p0, Landroid/inputmethodservice/InputMethodService;->mFullscreenArea:Landroid/view/ViewGroup;

    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 933
    const/4 v5, -0x2

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 934
    const/4 v5, 0x0

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_4

    .end local v1    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    move v5, v7

    .line 951
    goto :goto_3
.end method

.method public updateInputViewShown()V
    .locals 4

    .prologue
    .line 1111
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mShowInputRequested:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    .line 1112
    :goto_0
    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    if-eq v2, v0, :cond_0

    iget-boolean v2, p0, Landroid/inputmethodservice/InputMethodService;->mWindowVisible:Z

    if-eqz v2, :cond_0

    .line 1113
    iput-boolean v0, p0, Landroid/inputmethodservice/InputMethodService;->mIsInputViewShown:Z

    .line 1114
    iget-object v3, p0, Landroid/inputmethodservice/InputMethodService;->mInputFrame:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1115
    iget-object v2, p0, Landroid/inputmethodservice/InputMethodService;->mInputView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 1116
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->initialize()V

    .line 1117
    invoke-virtual {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateInputView()Landroid/view/View;

    move-result-object v1

    .line 1118
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1119
    invoke-virtual {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 1110
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    return-void

    .line 1111
    :cond_1
    const/4 v0, 0x0

    .local v0, "isShown":Z
    goto :goto_0

    .line 1114
    .end local v0    # "isShown":Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method flymeInvokeMethodHandleBack(Z)Z
    .locals 1
    .param p1, "doIt"    # Z

    .prologue
    .line 2542
    invoke-direct {p0, p1}, Landroid/inputmethodservice/InputMethodService;->handleBack(Z)Z

    move-result v0

    return v0
.end method

.method protected final setCheckTouchBound(Z)V
    .locals 0
    .param p1, "check"    # Z

    .prologue
    .line 2538
    return-void
.end method

.class final Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$FlymeInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeShowBootMessage"
.end annotation


# instance fields
.field private mMsg:Ljava/lang/CharSequence;

.field private mPwm:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "pwm"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 8513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8514
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    .line 8515
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    .line 8513
    return-void
.end method

.method private showFlymeBootMessage()V
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 8525
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mMsg:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8526
    .local v3, "msgText":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_2

    const-string/jumbo v7, "flymeTrain"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 8528
    :try_start_0
    const-string/jumbo v7, "flymeTrain"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 8529
    .local v0, "arry1":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v3, v0, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8537
    .end local v0    # "arry1":[Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    if-nez v7, :cond_0

    .line 8538
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 8539
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    sget v8, Lcom/flyme/internal/R$layout;->android_upgrading_layout:I

    invoke-virtual {v2, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    .line 8540
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v8, Lcom/flyme/internal/R$id;->upgrade_main_msg:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    .line 8541
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    sget v8, Lcom/flyme/internal/R$id;->dex_opt_progressbar:I

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/meizu/widget/CircleProgressBar;

    iput-object v6, v7, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    .line 8542
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 8543
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 8544
    .local v4, "wm":Landroid/view/WindowManager;
    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v5}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 8546
    .local v5, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x5

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 8547
    const/16 v6, 0x7e5

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 8548
    const/16 v6, 0x11

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 8549
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 8550
    iput v10, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 8552
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8553
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8554
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 8556
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootLayout:Landroid/view/View;

    invoke-interface {v4, v6, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8558
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "wm":Landroid/view/WindowManager;
    .end local v5    # "wmParams":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFlymeBootMsgText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8524
    return-void

    .end local v3    # "msgText":Ljava/lang/String;
    :cond_1
    move-object v3, v6

    .line 8525
    goto/16 :goto_0

    .line 8530
    .restart local v3    # "msgText":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 8531
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "showFlymeBootMessage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 8534
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/flyme/internal/R$string;->system_booting:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 8520
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$FlymeInjector$FlymeShowBootMessage;->showFlymeBootMessage()V

    .line 8519
    return-void
.end method

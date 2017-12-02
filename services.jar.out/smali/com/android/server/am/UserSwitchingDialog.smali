.class final Lcom/android/server/am/UserSwitchingDialog;
.super Landroid/app/AlertDialog;
.source "UserSwitchingDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowShownListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UserSwitchingDialog$1;
    }
.end annotation


# static fields
.field private static final MSG_START_USER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityManagerUserSwitchingDialog"

.field private static final WINDOW_SHOWN_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mStartedUser:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;Z)V
    .locals 9
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "oldUser"    # Landroid/content/pm/UserInfo;
    .param p4, "newUser"    # Landroid/content/pm/UserInfo;
    .param p5, "aboveSystem"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 57
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance v4, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog;)V

    iput-object v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 60
    iget v4, p4, Landroid/content/pm/UserInfo;->id:I

    iput v4, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    .line 63
    invoke-virtual {p0, v7}, Lcom/android/server/am/UserSwitchingDialog;->setCancelable(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x1090103

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "view":Landroid/view/View;
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_1

    .line 70
    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    const v5, 0x1040543

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "viewMessage":Ljava/lang/String;
    :goto_0
    const v4, 0x102000b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/server/am/UserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 83
    if-eqz p5, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 87
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x110

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 89
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 56
    return-void

    .line 71
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "viewMessage":Ljava/lang/String;
    :cond_1
    invoke-static {p2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    invoke-virtual {p3}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    const v4, 0x104060a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "viewMessage":Ljava/lang/String;
    goto :goto_0

    .line 75
    .end local v3    # "viewMessage":Ljava/lang/String;
    :cond_2
    const v4, 0x1040609

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "viewMessage":Ljava/lang/String;
    goto :goto_0

    .line 78
    .end local v3    # "viewMessage":Ljava/lang/String;
    :cond_3
    new-array v4, v8, [Ljava/lang/Object;

    iget-object v5, p4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v4, v7

    const v5, 0x1040542

    invoke-virtual {v1, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "viewMessage":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onWindowShown()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->startUser()V

    .line 107
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 95
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 96
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 103
    const-wide/16 v4, 0xbb8

    .line 102
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    return-void
.end method

.method startUser()V
    .locals 3

    .prologue
    .line 113
    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    if-nez v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    iget v2, p0, Lcom/android/server/am/UserSwitchingDialog;->mUserId:I

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/UserController;->startUserInForeground(ILandroid/app/Dialog;)Z

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mStartedUser:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 118
    .local v0, "decorView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "decorView":Landroid/view/View;
    :cond_1
    monitor-exit p0

    .line 112
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.class final Lcom/android/server/power/ShutdownThread$FlymeInjector;
.super Ljava/lang/Object;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FlymeInjector"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownThread$FlymeInjector$DialogOnShowListener;,
        Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static showShutDownAnimation(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 739
    new-instance v0, Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;-><init>(Landroid/content/Context;)V

    .line 740
    .local v0, "dialog":Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;->setCancelable(Z)V

    .line 741
    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7e0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 742
    new-instance v1, Lcom/android/server/power/ShutdownThread$FlymeInjector$DialogOnShowListener;

    invoke-direct {v1}, Lcom/android/server/power/ShutdownThread$FlymeInjector$DialogOnShowListener;-><init>()V

    .line 743
    .local v1, "listener":Lcom/android/server/power/ShutdownThread$FlymeInjector$DialogOnShowListener;
    invoke-virtual {v0, v1}, Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 744
    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 745
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 746
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x1

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 747
    invoke-virtual {v0}, Lcom/android/server/power/ShutdownThread$FlymeInjector$ShutdownOrientationDialog;->show()V

    .line 738
    return-void
.end method

.class final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->createScrim(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$lp:Landroid/view/WindowManager$LayoutParams;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/view/WindowManager;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .param p1, "val$wm"    # Landroid/view/WindowManager;
    .param p2, "val$view"    # Landroid/view/View;
    .param p3, "val$lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->val$wm:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->val$lp:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->val$wm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$2;->val$lp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    return-void
.end method

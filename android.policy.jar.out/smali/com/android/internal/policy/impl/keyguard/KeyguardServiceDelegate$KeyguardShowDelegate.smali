.class final Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;
.super Lcom/android/internal/policy/IKeyguardShowCallback$Stub;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardShowDelegate"
.end annotation


# instance fields
.field private mShowListener:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;)V
    .locals 0
    .param p2, "showListener"    # Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardShowCallback$Stub;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mShowListener:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

    .line 75
    return-void
.end method


# virtual methods
.method public onShown(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    const-string v0, "KeyguardServiceDelegate"

    const-string v1, "**** SHOWN CALLED ****"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mShowListener:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->mShowListener:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$ShowListener;->onShown(Landroid/os/IBinder;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate$KeyguardShowDelegate;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardServiceDelegate;->hideScrim()V

    .line 84
    return-void
.end method

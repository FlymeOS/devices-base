.class final synthetic Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;
.super Ljava/lang/Object;
.source "PowerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager$WakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$r:Ljava/lang/Runnable;

.field private synthetic val$this:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public synthetic constructor <init>(Landroid/os/PowerManager$WakeLock;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;->val$this:Landroid/os/PowerManager$WakeLock;

    iput-object p2, p0, Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;->val$r:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;->val$this:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/os/PowerManager$WakeLock$-java_lang_Runnable_wrap_java_lang_Runnable_r_LambdaImpl0;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->-android_os_PowerManager$WakeLock_lambda$1(Ljava/lang/Runnable;)V

    return-void
.end method

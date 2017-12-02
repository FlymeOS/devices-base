.class final synthetic Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl1;
.super Ljava/lang/Object;
.source "Dialog.java"

# interfaces
.implements Landroid/view/Window$OnWindowSwipeDismissedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl1"
.end annotation


# instance fields
.field private synthetic val$this:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl1;->val$this:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public onWindowSwipeDismissed()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/app/Dialog$-void__init__android_content_Context_context_int_themeResId_boolean_createContextThemeWrapper_LambdaImpl1;->val$this:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->-android_app_Dialog_lambda$2()V

    return-void
.end method

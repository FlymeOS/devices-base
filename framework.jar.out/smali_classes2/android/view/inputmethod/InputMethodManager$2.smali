.class Landroid/view/inputmethod/InputMethodManager$2;
.super Ljava/lang/Object;
.source "InputMethodManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$startInputReason:I


# direct methods
.method constructor <init>(Landroid/view/inputmethod/InputMethodManager;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "val$startInputReason"    # I

    .prologue
    .line 1182
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iput p2, p0, Landroid/view/inputmethod/InputMethodManager$2;->val$startInputReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1185
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$2;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p0, Landroid/view/inputmethod/InputMethodManager$2;->val$startInputReason:I

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->startInputInner(ILandroid/os/IBinder;III)Z

    .line 1184
    return-void
.end method

.class Landroid/view/WindowManagerImpl$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "WindowManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/WindowManagerImpl;->requestAppKeyboardShortcuts(Landroid/view/WindowManager$KeyboardShortcutsReceiver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/WindowManagerImpl;

.field final synthetic val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# direct methods
.method constructor <init>(Landroid/view/WindowManagerImpl;Landroid/view/WindowManager$KeyboardShortcutsReceiver;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/WindowManagerImpl;
    .param p2, "val$receiver"    # Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    .prologue
    .line 130
    iput-object p1, p0, Landroid/view/WindowManagerImpl$1;->this$0:Landroid/view/WindowManagerImpl;

    iput-object p2, p0, Landroid/view/WindowManagerImpl$1;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 134
    const-string/jumbo v1, "shortcuts_array"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 135
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v1, p0, Landroid/view/WindowManagerImpl$1;->val$receiver:Landroid/view/WindowManager$KeyboardShortcutsReceiver;

    invoke-interface {v1, v0}, Landroid/view/WindowManager$KeyboardShortcutsReceiver;->onKeyboardShortcutsReceived(Ljava/util/List;)V

    .line 132
    return-void
.end method

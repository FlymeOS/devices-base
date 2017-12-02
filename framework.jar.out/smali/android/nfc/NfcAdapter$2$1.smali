.class Landroid/nfc/NfcAdapter$2$1;
.super Ljava/lang/Object;
.source "NfcAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/nfc/NfcAdapter$2;->onTagRemoved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/nfc/NfcAdapter$2;

.field final synthetic val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;


# direct methods
.method constructor <init>(Landroid/nfc/NfcAdapter$2;Landroid/nfc/NfcAdapter$OnTagRemovedListener;)V
    .locals 0
    .param p1, "this$1"    # Landroid/nfc/NfcAdapter$2;
    .param p2, "val$tagRemovedListener"    # Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    .prologue
    .line 1669
    iput-object p1, p0, Landroid/nfc/NfcAdapter$2$1;->this$1:Landroid/nfc/NfcAdapter$2;

    iput-object p2, p0, Landroid/nfc/NfcAdapter$2$1;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Landroid/nfc/NfcAdapter$2$1;->val$tagRemovedListener:Landroid/nfc/NfcAdapter$OnTagRemovedListener;

    invoke-interface {v0}, Landroid/nfc/NfcAdapter$OnTagRemovedListener;->onTagRemoved()V

    .line 1671
    return-void
.end method

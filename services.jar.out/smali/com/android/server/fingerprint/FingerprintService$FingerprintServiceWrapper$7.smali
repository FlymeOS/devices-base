.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->rename(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$fingerId:I

.field final synthetic val$groupId:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;IILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$fingerId"    # I
    .param p3, "val$groupId"    # I
    .param p4, "val$name"    # Ljava/lang/String;

    .prologue
    .line 910
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->val$fingerId:I

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->val$groupId:I

    iput-object p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->-get5(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->-get0(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->val$fingerId:I

    .line 914
    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->val$groupId:I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$7;->val$name:Ljava/lang/String;

    .line 913
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintUtils;->renameFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 912
    return-void
.end method

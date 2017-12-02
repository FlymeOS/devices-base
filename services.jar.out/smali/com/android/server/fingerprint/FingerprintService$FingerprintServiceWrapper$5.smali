.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->setActiveUser(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;
    .param p2, "val$userId"    # I

    .prologue
    .line 873
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$5;->val$userId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->-wrap9(Lcom/android/server/fingerprint/FingerprintService;ILjava/lang/String;)V

    .line 875
    return-void
.end method

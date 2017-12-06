.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;

.field final synthetic val$volumeId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/storage/ExternalStorageFormatter;
    .param p2, "val$mountService"    # Landroid/os/storage/IMountService;
    .param p3, "val$volumeId"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$volumeId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/high16 v7, 0x10000000

    .line 184
    const/4 v3, 0x0

    .line 186
    .local v3, "success":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$volumeId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->format(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    const/4 v3, 0x1

    .line 194
    :goto_0
    if-eqz v3, :cond_0

    .line 195
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->-get1(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 198
    const-string/jumbo v4, "android.intent.extra.REASON"

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->-get2(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 202
    return-void

    .line 188
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 190
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    .line 191
    sget v5, Lcom/flyme/internal/R$string;->format_error:I

    const/4 v6, 0x1

    .line 190
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 192
    invoke-static {}, Landroid/os/Looper;->loop()V

    goto :goto_0

    .line 207
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->-get0(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 208
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    const-string/jumbo v4, "android.intent.extra.REASON"

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-static {v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->-get2(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4, v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 218
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    .line 219
    return-void

    .line 214
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v5, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$volumeId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/storage/IMountService;->mount(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 215
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

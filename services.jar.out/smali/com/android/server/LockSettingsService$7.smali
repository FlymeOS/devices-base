.class Lcom/android/server/LockSettingsService$7;
.super Ljava/lang/Object;
.source "LockSettingsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LockSettingsService;->notifyActivePasswordMetricsAvailable(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$quality:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/LockSettingsService;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;
    .param p2, "val$password"    # Ljava/lang/String;
    .param p3, "val$quality"    # I
    .param p4, "val$userId"    # I

    .prologue
    .line 1487
    iput-object p1, p0, Lcom/android/server/LockSettingsService$7;->this$0:Lcom/android/server/LockSettingsService;

    iput-object p2, p0, Lcom/android/server/LockSettingsService$7;->val$password:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/LockSettingsService$7;->val$quality:I

    iput p4, p0, Lcom/android/server/LockSettingsService$7;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 1490
    const/4 v2, 0x0

    .line 1491
    .local v2, "length":I
    const/4 v3, 0x0

    .line 1492
    .local v3, "letters":I
    const/4 v4, 0x0

    .line 1493
    .local v4, "uppercase":I
    const/4 v5, 0x0

    .line 1494
    .local v5, "lowercase":I
    const/4 v6, 0x0

    .line 1495
    .local v6, "numbers":I
    const/4 v7, 0x0

    .line 1496
    .local v7, "symbols":I
    const/4 v8, 0x0

    .line 1497
    .local v8, "nonletter":I
    iget-object v1, p0, Lcom/android/server/LockSettingsService$7;->val$password:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1498
    iget-object v1, p0, Lcom/android/server/LockSettingsService$7;->val$password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1499
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v2, :cond_3

    .line 1500
    iget-object v1, p0, Lcom/android/server/LockSettingsService$7;->val$password:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 1501
    .local v10, "c":C
    const/16 v1, 0x41

    if-lt v10, v1, :cond_0

    const/16 v1, 0x5a

    if-gt v10, v1, :cond_0

    .line 1502
    add-int/lit8 v3, v3, 0x1

    .line 1503
    add-int/lit8 v4, v4, 0x1

    .line 1499
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1504
    :cond_0
    const/16 v1, 0x61

    if-lt v10, v1, :cond_1

    const/16 v1, 0x7a

    if-gt v10, v1, :cond_1

    .line 1505
    add-int/lit8 v3, v3, 0x1

    .line 1506
    add-int/lit8 v5, v5, 0x1

    .line 1504
    goto :goto_1

    .line 1507
    :cond_1
    const/16 v1, 0x30

    if-lt v10, v1, :cond_2

    const/16 v1, 0x39

    if-gt v10, v1, :cond_2

    .line 1508
    add-int/lit8 v6, v6, 0x1

    .line 1509
    add-int/lit8 v8, v8, 0x1

    .line 1507
    goto :goto_1

    .line 1511
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 1512
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1517
    .end local v10    # "c":C
    .end local v11    # "i":I
    :cond_3
    iget-object v1, p0, Lcom/android/server/LockSettingsService$7;->this$0:Lcom/android/server/LockSettingsService;

    invoke-static {v1}, Lcom/android/server/LockSettingsService;->-get0(Lcom/android/server/LockSettingsService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v9, "device_policy"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 1516
    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1518
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    iget v1, p0, Lcom/android/server/LockSettingsService$7;->val$quality:I

    .line 1519
    iget v9, p0, Lcom/android/server/LockSettingsService$7;->val$userId:I

    .line 1518
    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1489
    return-void
.end method

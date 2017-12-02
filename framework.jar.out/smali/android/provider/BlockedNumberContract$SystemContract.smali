.class public Landroid/provider/BlockedNumberContract$SystemContract;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    }
.end annotation


# static fields
.field public static final ACTION_BLOCK_SUPPRESSION_STATE_CHANGED:Ljava/lang/String; = "android.provider.action.BLOCK_SUPPRESSION_STATE_CHANGED"

.field public static final METHOD_END_BLOCK_SUPPRESSION:Ljava/lang/String; = "end_block_suppression"

.field public static final METHOD_GET_BLOCK_SUPPRESSION_STATUS:Ljava/lang/String; = "get_block_suppression_status"

.field public static final METHOD_NOTIFY_EMERGENCY_CONTACT:Ljava/lang/String; = "notify_emergency_contact"

.field public static final METHOD_SHOULD_SYSTEM_BLOCK_NUMBER:Ljava/lang/String; = "should_system_block_number"

.field public static final RES_BLOCKING_SUPPRESSED_UNTIL_TIMESTAMP:Ljava/lang/String; = "blocking_suppressed_until_timestamp"

.field public static final RES_IS_BLOCKING_SUPPRESSED:Ljava/lang/String; = "blocking_suppressed"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static endBlockSuppression(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 339
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 340
    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "end_block_suppression"

    .line 339
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 338
    return-void
.end method

.method public static getBlockSuppressionStatus(Landroid/content/Context;)Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 360
    sget-object v2, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v3, "get_block_suppression_status"

    .line 359
    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 361
    .local v0, "res":Landroid/os/Bundle;
    new-instance v1, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;

    const-string/jumbo v2, "blocking_suppressed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 362
    const-string/jumbo v3, "blocking_suppressed_until_timestamp"

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 361
    invoke-direct {v1, v2, v4, v5}, Landroid/provider/BlockedNumberContract$SystemContract$BlockSuppressionStatus;-><init>(ZJ)V

    return-object v1
.end method

.method public static notifyEmergencyContact(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    sget-object v1, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v2, "notify_emergency_contact"

    .line 330
    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 329
    return-void
.end method

.method public static shouldSystemBlockNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 350
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 351
    sget-object v3, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v4, "should_system_block_number"

    .line 350
    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 352
    .local v0, "res":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "blocked"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    return v1
.end method

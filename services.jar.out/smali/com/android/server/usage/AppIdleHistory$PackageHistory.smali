.class Lcom/android/server/usage/AppIdleHistory$PackageHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppIdleHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageHistory"
.end annotation


# instance fields
.field lastUsedElapsedTime:J

.field lastUsedScreenTime:J

.field final recent:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/16 v0, 0x64

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory$PackageHistory;->recent:[B

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppIdleHistory$PackageHistory;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory$PackageHistory;-><init>()V

    return-void
.end method

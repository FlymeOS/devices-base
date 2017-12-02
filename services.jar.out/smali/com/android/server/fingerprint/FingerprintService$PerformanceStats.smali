.class Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceStats"
.end annotation


# instance fields
.field accept:I

.field acquire:I

.field lockout:I

.field reject:I

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method

.class final enum Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;
.super Ljava/lang/Enum;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EvaluationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

.field public static final enum CAPTIVE_PORTAL:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

.field public static final enum VALIDATED:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;


# instance fields
.field final isValidated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    const-string/jumbo v1, "VALIDATED"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->VALIDATED:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 102
    new-instance v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    const-string/jumbo v1, "CAPTIVE_PORTAL"

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->CAPTIVE_PORTAL:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->VALIDATED:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->CAPTIVE_PORTAL:Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->$VALUES:[Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p3, "isValidated"    # Z

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput-boolean p3, p0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->isValidated:Z

    .line 104
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;->$VALUES:[Lcom/android/server/connectivity/NetworkMonitor$EvaluationResult;

    return-object v0
.end method

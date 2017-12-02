.class Landroid/net/ip/IpManager$MessageHandlingLogger;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageHandlingLogger"
.end annotation


# instance fields
.field public processedInState:Ljava/lang/String;

.field public receivedInState:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpManager$MessageHandlingLogger;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/net/ip/IpManager$MessageHandlingLogger;-><init>()V

    return-void
.end method


# virtual methods
.method public handled(Lcom/android/internal/util/State;Lcom/android/internal/util/IState;)V
    .locals 1
    .param p1, "processedIn"    # Lcom/android/internal/util/State;
    .param p2, "receivedIn"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1457
    invoke-virtual {p1}, Lcom/android/internal/util/State;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    .line 1458
    invoke-interface {p2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    .line 1456
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1452
    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    .line 1453
    iput-object v0, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    .line 1451
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1462
    const-string/jumbo v0, "rcvd_in=%s, proc_in=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1463
    iget-object v2, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->receivedInState:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/ip/IpManager$MessageHandlingLogger;->processedInState:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1462
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

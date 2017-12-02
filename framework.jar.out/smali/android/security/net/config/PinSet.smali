.class public final Landroid/security/net/config/PinSet;
.super Ljava/lang/Object;
.source "PinSet.java"


# static fields
.field public static final EMPTY_PINSET:Landroid/security/net/config/PinSet;


# instance fields
.field public final expirationTime:J

.field public final pins:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/Pin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    new-instance v0, Landroid/security/net/config/PinSet;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, v3}, Landroid/security/net/config/PinSet;-><init>(Ljava/util/Set;J)V

    .line 25
    sput-object v0, Landroid/security/net/config/PinSet;->EMPTY_PINSET:Landroid/security/net/config/PinSet;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;J)V
    .locals 2
    .param p2, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/security/net/config/Pin;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "pins":Ljava/util/Set;, "Ljava/util/Set<Landroid/security/net/config/Pin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "pins must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    iput-object p1, p0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    .line 35
    iput-wide p2, p0, Landroid/security/net/config/PinSet;->expirationTime:J

    .line 30
    return-void
.end method


# virtual methods
.method getPinAlgorithms()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 41
    .local v0, "algorithms":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/security/net/config/PinSet;->pins:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pin$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/security/net/config/Pin;

    .line 42
    .local v1, "pin":Landroid/security/net/config/Pin;
    iget-object v3, v1, Landroid/security/net/config/Pin;->digestAlgorithm:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 44
    .end local v1    # "pin":Landroid/security/net/config/Pin;
    :cond_0
    return-object v0
.end method

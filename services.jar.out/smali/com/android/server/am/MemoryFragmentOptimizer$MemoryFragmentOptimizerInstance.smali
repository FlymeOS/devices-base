.class Lcom/android/server/am/MemoryFragmentOptimizer$MemoryFragmentOptimizerInstance;
.super Ljava/lang/Object;
.source "MemoryFragmentOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryFragmentOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MemoryFragmentOptimizerInstance"
.end annotation


# static fields
.field public static sInstance:Lcom/android/server/am/MemoryFragmentOptimizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/android/server/am/MemoryFragmentOptimizer;

    invoke-direct {v0}, Lcom/android/server/am/MemoryFragmentOptimizer;-><init>()V

    sput-object v0, Lcom/android/server/am/MemoryFragmentOptimizer$MemoryFragmentOptimizerInstance;->sInstance:Lcom/android/server/am/MemoryFragmentOptimizer;

    .line 81
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

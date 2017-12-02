.class Lcom/android/server/pm/CompilerStats$PackageStats;
.super Ljava/lang/Object;
.source "CompilerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CompilerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageStats"
.end annotation


# instance fields
.field private final compileTimePerCodePath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final packageName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/CompilerStats$PackageStats;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->packageName:Ljava/lang/String;

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    .line 67
    return-void
.end method

.method private static getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "codePath"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 105
    .local v0, "lastSlash":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 109
    iget-object v3, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 111
    const-string/jumbo v2, "(No recorded stats)"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 108
    return-void

    .line 113
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 114
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1    # "e$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCompileTime(Ljava/lang/String;)J
    .locals 6
    .param p1, "codePath"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "storagePath":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v3

    .line 84
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .local v0, "l":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 86
    const-wide/16 v4, 0x0

    monitor-exit v3

    return-wide v4

    .line 88
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    monitor-exit v3

    return-wide v4

    .line 83
    .end local v0    # "l":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public setCompileTime(Ljava/lang/String;J)V
    .locals 6
    .param p1, "codePath"    # Ljava/lang/String;
    .param p2, "compileTimeInMs"    # J

    .prologue
    .line 93
    invoke-static {p1}, Lcom/android/server/pm/CompilerStats$PackageStats;->getStoredPathFromCodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "storagePath":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    monitor-enter v2

    .line 95
    const-wide/16 v4, 0x0

    cmp-long v1, p2, v4

    if-gtz v1, :cond_0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 92
    return-void

    .line 98
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/CompilerStats$PackageStats;->compileTimePerCodePath:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

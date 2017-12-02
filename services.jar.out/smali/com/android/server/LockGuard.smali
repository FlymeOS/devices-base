.class public Lcom/android/server/LockGuard;
.super Ljava/lang/Object;
.source "LockGuard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockGuard$LockInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LockGuard"

.field private static sKnown:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LockGuard$LockInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/util/ArrayMap;-><init>(IZ)V

    sput-object v0, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 140
    sget-object v4, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 141
    .local v3, "lock":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockGuard$LockInfo;

    .line 142
    .local v1, "info":Lcom/android/server/LockGuard$LockInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Lock "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    iget-object v4, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "  Child "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "info":Lcom/android/server/LockGuard$LockInfo;
    .end local v2    # "j":I
    .end local v3    # "lock":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private static findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;
    .locals 4
    .param p0, "lock"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 71
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    .line 72
    .local v0, "info":Lcom/android/server/LockGuard$LockInfo;
    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/android/server/LockGuard$LockInfo;

    .end local v0    # "info":Lcom/android/server/LockGuard$LockInfo;
    invoke-direct {v0, v2}, Lcom/android/server/LockGuard$LockInfo;-><init>(Lcom/android/server/LockGuard$LockInfo;)V

    .line 74
    .restart local v0    # "info":Lcom/android/server/LockGuard$LockInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    const-string/jumbo v2, "]"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 76
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    return-object v0
.end method

.method public static guard(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p0, "lock"    # Ljava/lang/Object;

    .prologue
    .line 88
    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object p0

    .line 91
    :cond_1
    const/4 v4, 0x0

    .line 92
    .local v4, "triggered":Z
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v2

    .line 93
    .local v2, "info":Lcom/android/server/LockGuard$LockInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, v2, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 94
    iget-object v5, v2, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v5, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 95
    .local v0, "child":Ljava/lang/Object;
    if-nez v0, :cond_3

    .line 93
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_3
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    const-string/jumbo v5, "LockGuard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Calling thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is holding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 99
    invoke-static {v0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 99
    const-string/jumbo v7, " while trying to acquire "

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 100
    invoke-static {p0}, Lcom/android/server/LockGuard;->lockToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 100
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    .line 98
    invoke-static {v5, v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    const/4 v4, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "child":Ljava/lang/Object;
    :cond_4
    if-nez v4, :cond_7

    .line 108
    const/4 v1, 0x0

    :goto_2
    sget-object v5, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 109
    sget-object v5, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 110
    .local v3, "test":Ljava/lang/Object;
    if-eqz v3, :cond_5

    if-ne v3, p0, :cond_6

    .line 108
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 112
    :cond_6
    invoke-static {v3}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 113
    sget-object v5, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LockGuard$LockInfo;

    iget-object v5, v5, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    invoke-virtual {v5, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 118
    .end local v3    # "test":Ljava/lang/Object;
    :cond_7
    return-object p0
.end method

.method public static installLock(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "lock"    # Ljava/lang/Object;
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-static {p0}, Lcom/android/server/LockGuard;->findOrCreateLockInfo(Ljava/lang/Object;)Lcom/android/server/LockGuard$LockInfo;

    move-result-object v0

    .line 126
    .local v0, "info":Lcom/android/server/LockGuard$LockInfo;
    iput-object p1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    .line 124
    return-void
.end method

.method private static lockToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "lock"    # Ljava/lang/Object;

    .prologue
    .line 130
    sget-object v1, Lcom/android/server/LockGuard;->sKnown:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LockGuard$LockInfo;

    .line 131
    .local v0, "info":Lcom/android/server/LockGuard$LockInfo;
    if-eqz v0, :cond_0

    .line 132
    iget-object v1, v0, Lcom/android/server/LockGuard$LockInfo;->label:Ljava/lang/String;

    return-object v1

    .line 134
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

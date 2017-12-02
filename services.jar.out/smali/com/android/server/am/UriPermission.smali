.class final Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermission$PersistedTimeComparator;,
        Lcom/android/server/am/UriPermission$Snapshot;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/ActivityManagerService$GrantUri;)V
    .locals 2
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "uri"    # Lcom/android/server/am/ActivityManagerService$GrantUri;

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 66
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 68
    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 70
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 73
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 89
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    .line 90
    iput-object p1, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    .line 92
    iput p3, p0, Lcom/android/server/am/UriPermission;->targetUid:I

    .line 93
    iput-object p4, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    .line 88
    return-void
.end method

.method private addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 255
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 256
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 257
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addReadPermission(Lcom/android/server/am/UriPermission;)V

    .line 253
    :cond_1
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-nez v0, :cond_0

    .line 280
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 281
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 282
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addWritePermission(Lcom/android/server/am/UriPermission;)V

    .line 278
    :cond_1
    return-void
.end method

.method private updateModeFlags()V
    .locals 4

    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 98
    .local v0, "oldModeFlags":I
    iget v1, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    .line 100
    const-string/jumbo v1, "UriPermission"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    if-eq v1, v0, :cond_0

    .line 101
    const-string/jumbo v1, "UriPermission"

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is changing from 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 103
    const-string/jumbo v3, " to 0x"

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 101
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .locals 6

    .prologue
    .line 386
    new-instance v0, Landroid/content/UriPermission;

    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget-wide v4, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "targetUserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " sourcePkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " targetPkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mode=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " owned=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " global=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " persistable=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " persisted=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    iget-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " persistedCreate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 332
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 334
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v2, :cond_1

    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 336
    const-string/jumbo v2, "readOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "owner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UriPermissionOwner;

    .line 338
    .local v0, "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 342
    .end local v0    # "owner":Lcom/android/server/am/UriPermissionOwner;
    .end local v1    # "owner$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v2, :cond_2

    .line 343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    const-string/jumbo v2, "writeOwners:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "owner$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UriPermissionOwner;

    .line 346
    .restart local v0    # "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  * "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 317
    .end local v0    # "owner":Lcom/android/server/am/UriPermissionOwner;
    .end local v1    # "owner$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public getStrength(I)I
    .locals 1
    .param p1, "modeFlags"    # I

    .prologue
    .line 240
    and-int/lit8 p1, p1, 0x3

    .line 242
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    .line 243
    const/4 v0, 0x3

    return v0

    .line 244
    :cond_0
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    .line 245
    const/4 v0, 0x2

    return v0

    .line 246
    :cond_1
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_2

    .line 247
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method grantModes(ILcom/android/server/am/UriPermissionOwner;)V
    .locals 2
    .param p1, "modeFlags"    # I
    .param p2, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    const/4 v0, 0x0

    .line 125
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 126
    .local v0, "persistable":Z
    :cond_0
    and-int/lit8 p1, p1, 0x3

    .line 129
    if-eqz v0, :cond_1

    .line 130
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 133
    :cond_1
    if-nez p2, :cond_3

    .line 134
    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 144
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 124
    return-void

    .line 136
    :cond_3
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4

    .line 137
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    .line 139
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 140
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    goto :goto_0
.end method

.method initPersistedModes(IJ)V
    .locals 0
    .param p1, "modeFlags"    # I
    .param p2, "createdTime"    # J

    .prologue
    .line 114
    and-int/lit8 p1, p1, 0x3

    .line 117
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 118
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 119
    iput-wide p2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 121
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 113
    return-void
.end method

.method releasePersistableModes(I)Z
    .locals 4
    .param p1, "modeFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 173
    and-int/lit8 p1, p1, 0x3

    .line 176
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 178
    .local v0, "before":I
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 179
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    not-int v3, p1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 181
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v2, :cond_0

    .line 182
    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 186
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string/jumbo v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown read owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 272
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 273
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 274
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 267
    :cond_1
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    const-string/jumbo v0, "UriPermission"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown write owner "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 298
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 299
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 292
    :cond_1
    return-void
.end method

.method revokeModes(IZ)Z
    .locals 8
    .param p1, "modeFlags"    # I
    .param p2, "includingOwners"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 193
    and-int/lit8 v5, p1, 0x40

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    .line 194
    .local v1, "persistable":Z
    :goto_0
    and-int/lit8 p1, p1, 0x3

    .line 197
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 199
    .local v0, "before":I
    and-int/lit8 v5, p1, 0x1

    if-eqz v5, :cond_3

    .line 200
    if-eqz v1, :cond_0

    .line 201
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 202
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 204
    :cond_0
    iget v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 205
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    if-eqz v5, :cond_3

    if-eqz p2, :cond_3

    .line 206
    iget v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v5, v5, -0x2

    iput v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 207
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    .line 208
    .local v2, "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_1

    .line 193
    .end local v0    # "before":I
    .end local v1    # "persistable":Z
    .end local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "persistable":Z
    goto :goto_0

    .line 210
    .restart local v0    # "before":I
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    iput-object v6, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    .line 213
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_3
    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_6

    .line 214
    if-eqz v1, :cond_4

    .line 215
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    .line 216
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 218
    :cond_4
    iget v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    .line 219
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    if-eqz v5, :cond_6

    if-eqz p2, :cond_6

    .line 220
    iget v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    and-int/lit8 v5, v5, -0x3

    iput v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    .line 221
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    .line 222
    .restart local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    goto :goto_2

    .line 224
    .end local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_5
    iput-object v6, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    .line 228
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_6
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-nez v5, :cond_7

    .line 229
    const-wide/high16 v6, -0x8000000000000000L

    iput-wide v6, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 232
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 233
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v5, v0, :cond_8

    const/4 v4, 0x1

    :cond_8
    return v4
.end method

.method public snapshot()Lcom/android/server/am/UriPermission$Snapshot;
    .locals 2

    .prologue
    .line 382
    new-instance v0, Lcom/android/server/am/UriPermission$Snapshot;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$Snapshot;)V

    return-object v0
.end method

.method takePersistableModes(I)Z
    .locals 5
    .param p1, "modeFlags"    # I

    .prologue
    const/4 v1, 0x0

    .line 151
    and-int/lit8 p1, p1, 0x3

    .line 154
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v2, p1

    if-eq v2, p1, :cond_0

    .line 155
    const-string/jumbo v2, "UriPermission"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Requested flags 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    const-string/jumbo v4, ", but only 0x"

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    const-string/jumbo v4, " are allowed"

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1

    .line 161
    :cond_0
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 162
    .local v0, "before":I
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    and-int/2addr v3, p1

    or-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    .line 164
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eqz v2, :cond_1

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    .line 169
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    if-eq v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    return-object v1

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 309
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UriPermission{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    return-object v1
.end method

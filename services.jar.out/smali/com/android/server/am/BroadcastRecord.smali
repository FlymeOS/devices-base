.class final Lcom/android/server/am/BroadcastRecord;
.super Landroid/os/Binder;
.source "BroadcastRecord.java"


# static fields
.field static final APP_RECEIVE:I = 0x1

.field static final CALL_DONE_RECEIVE:I = 0x3

.field static final CALL_IN_RECEIVE:I = 0x2

.field static final DELIVERY_DELIVERED:I = 0x1

.field static final DELIVERY_PENDING:I = 0x0

.field static final DELIVERY_SKIPPED:I = 0x2

.field static final DELIVERY_TIMEOUT:I = 0x3

.field static final IDLE:I = 0x0

.field static final WAITING_SERVICES:I = 0x4


# instance fields
.field anrCount:I

.field final appOp:I

.field final callerApp:Lcom/android/server/am/ProcessRecord;

.field final callerPackage:Ljava/lang/String;

.field final callingPid:I

.field final callingUid:I

.field curApp:Lcom/android/server/am/ProcessRecord;

.field curComponent:Landroid/content/ComponentName;

.field curFilter:Lcom/android/server/am/BroadcastFilter;

.field curReceiver:Landroid/content/pm/ActivityInfo;

.field final delivery:[I

.field dispatchClockTime:J

.field dispatchTime:J

.field enqueueClockTime:J

.field finishTime:J

.field final initialSticky:Z

.field final intent:Landroid/content/Intent;

.field manifestCount:I

.field manifestSkipCount:I

.field nextReceiver:I

.field final options:Landroid/app/BroadcastOptions;

.field final ordered:Z

.field queue:Lcom/android/server/am/BroadcastQueue;

.field receiver:Landroid/os/IBinder;

.field receiverTime:J

.field final receivers:Ljava/util/List;

.field final requiredPermissions:[Ljava/lang/String;

.field final resolvedType:Ljava/lang/String;

.field resultAbort:Z

.field resultCode:I

.field resultData:Ljava/lang/String;

.field resultExtras:Landroid/os/Bundle;

.field resultTo:Landroid/content/IIntentReceiver;

.field state:I

.field final sticky:Z

.field final targetComp:Landroid/content/ComponentName;

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZI)V
    .locals 3
    .param p1, "_queue"    # Lcom/android/server/am/BroadcastQueue;
    .param p2, "_intent"    # Landroid/content/Intent;
    .param p3, "_callerApp"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "_callerPackage"    # Ljava/lang/String;
    .param p5, "_callingPid"    # I
    .param p6, "_callingUid"    # I
    .param p7, "_resolvedType"    # Ljava/lang/String;
    .param p8, "_requiredPermissions"    # [Ljava/lang/String;
    .param p9, "_appOp"    # I
    .param p10, "_options"    # Landroid/app/BroadcastOptions;
    .param p11, "_receivers"    # Ljava/util/List;
    .param p12, "_resultTo"    # Landroid/content/IIntentReceiver;
    .param p13, "_resultCode"    # I
    .param p14, "_resultData"    # Ljava/lang/String;
    .param p15, "_resultExtras"    # Landroid/os/Bundle;
    .param p16, "_serialized"    # Z
    .param p17, "_sticky"    # Z
    .param p18, "_initialSticky"    # Z
    .param p19, "_userId"    # I

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 222
    if-nez p2, :cond_0

    .line 223
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Can\'t construct with a null intent"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_0
    iput-object p1, p0, Lcom/android/server/am/BroadcastRecord;->queue:Lcom/android/server/am/BroadcastQueue;

    .line 226
    iput-object p2, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    .line 227
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    .line 228
    iput-object p3, p0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    .line 229
    iput-object p4, p0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    .line 230
    iput p5, p0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    .line 231
    iput p6, p0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    .line 232
    iput-object p7, p0, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    .line 233
    iput-object p8, p0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    .line 234
    iput p9, p0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    .line 235
    iput-object p10, p0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    .line 236
    iput-object p11, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    .line 237
    if-eqz p11, :cond_1

    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    .line 238
    iput-object p12, p0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    .line 239
    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    .line 240
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    .line 241
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    .line 242
    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    .line 243
    move/from16 v0, p17

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    .line 244
    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    .line 245
    move/from16 v0, p19

    iput v0, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 246
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 247
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/BroadcastRecord;->state:I

    .line 221
    return-void

    .line 237
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method cleanupDisabledPackageReceiversLocked(Ljava/lang/String;Ljava/util/Set;IZ)Z
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "doit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;IZ)Z"
        }
    .end annotation

    .prologue
    .local p2, "filterByClasses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 252
    const/4 v7, -0x1

    if-eq p3, v7, :cond_1

    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-eq v7, p3, :cond_1

    .line 253
    :cond_0
    return v6

    .line 252
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "didSomething":Z
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v1, v7, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_8

    .line 259
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 260
    .local v3, "o":Ljava/lang/Object;
    instance-of v7, v3, Landroid/content/pm/ResolveInfo;

    if-nez v7, :cond_3

    .line 258
    .end local v3    # "o":Ljava/lang/Object;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 263
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_3
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .end local v3    # "o":Ljava/lang/Object;
    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 265
    .local v2, "info":Landroid/content/pm/ActivityInfo;
    if-eqz p1, :cond_4

    .line 266
    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 267
    if-eqz p2, :cond_5

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-interface {p2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    .line 268
    .local v4, "sameComponent":Z
    :goto_2
    if-eqz v4, :cond_2

    .line 269
    if-nez p4, :cond_7

    .line 270
    return v5

    .end local v4    # "sameComponent":Z
    :cond_4
    move v4, v5

    .line 265
    goto :goto_2

    :cond_5
    move v4, v5

    .line 267
    goto :goto_2

    :cond_6
    move v4, v6

    .line 266
    goto :goto_2

    .line 272
    .restart local v4    # "sameComponent":Z
    :cond_7
    const/4 v0, 0x1

    .line 273
    iget-object v7, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 274
    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-ge v1, v7, :cond_2

    .line 275
    iget v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    goto :goto_1

    .line 279
    .end local v2    # "info":Landroid/content/pm/ActivityInfo;
    .end local v4    # "sameComponent":Z
    :cond_8
    iget v5, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    iget-object v6, p0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    .line 281
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/text/SimpleDateFormat;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 101
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 103
    .local v6, "now":J
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v11, " to user "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->userId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 104
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eq v11, v12, :cond_0

    .line 106
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "  targetComp: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->targetComp:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v11}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 109
    .local v3, "bundle":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 110
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "  extras: "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "caller="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 113
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v11

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v11, " pid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 115
    const-string/jumbo v11, " uid="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 116
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    array-length v11, v11

    if-lez v11, :cond_11

    .line 118
    :goto_1
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "requiredPermissions="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 120
    const-string/jumbo v11, "  appOp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 122
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    if-eqz v11, :cond_3

    .line 123
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "options="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    invoke-virtual {v11}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 125
    :cond_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "enqueueClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    new-instance v11, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v11, " dispatchClockTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 128
    new-instance v11, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "dispatchTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 130
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 131
    const-string/jumbo v11, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 132
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->dispatchClockTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/BroadcastRecord;->enqueueClockTime:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 133
    const-string/jumbo v11, " since enq)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-eqz v11, :cond_12

    .line 135
    const-string/jumbo v11, " finishTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 136
    const-string/jumbo v11, " ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->finishTime:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/am/BroadcastRecord;->dispatchTime:J

    sub-long/2addr v12, v14

    move-object/from16 v0, p1

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 138
    const-string/jumbo v11, " since disp)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 142
    :goto_2
    const-string/jumbo v11, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    if-eqz v11, :cond_4

    .line 144
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "anrCount="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->anrCount:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(I)V

    .line 146
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_13

    .line 147
    :cond_5
    :goto_3
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resultTo="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 148
    const-string/jumbo v11, " resultCode="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 149
    const-string/jumbo v11, " resultData="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    if-eqz v11, :cond_7

    .line 152
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resultExtras="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 154
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    if-eqz v11, :cond_9

    .line 155
    :cond_8
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "resultAbort="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->resultAbort:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 156
    const-string/jumbo v11, " ordered="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 157
    const-string/jumbo v11, " sticky="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 158
    const-string/jumbo v11, " initialSticky="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Z)V

    .line 160
    :cond_9
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    if-nez v11, :cond_a

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    if-eqz v11, :cond_b

    .line 161
    :cond_a
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "nextReceiver="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->nextReceiver:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 162
    const-string/jumbo v11, " receiver="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receiver:Landroid/os/IBinder;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 164
    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    if-eqz v11, :cond_c

    .line 165
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "curFilter="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curFilter:Lcom/android/server/am/BroadcastFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 167
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_d

    .line 168
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "curReceiver="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v11, :cond_e

    .line 171
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "curApp="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curApp:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 172
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "curComponent="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v11

    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v11, :cond_e

    .line 175
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "curSourceDir="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->curReceiver:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    :cond_e
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    if-eqz v11, :cond_f

    .line 180
    const-string/jumbo v10, " (?)"

    .line 181
    .local v10, "stateStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    packed-switch v11, :pswitch_data_0

    .line 187
    :goto_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v11, "state="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->state:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 189
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    .line 190
    .local v2, "N":I
    :goto_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "p2":Ljava/lang/String;
    new-instance v9, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 192
    .local v9, "printer":Landroid/util/PrintWriterPrinter;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    if-ge v4, v2, :cond_18

    .line 193
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->receivers:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 194
    .local v5, "o":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->delivery:[I

    aget v11, v11, v4

    packed-switch v11, :pswitch_data_1

    .line 200
    const-string/jumbo v11, "???????"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    :goto_8
    const-string/jumbo v11, " #"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    instance-of v11, v5, Lcom/android/server/am/BroadcastFilter;

    if-eqz v11, :cond_16

    .line 204
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 205
    check-cast v5, Lcom/android/server/am/BroadcastFilter;

    .end local v5    # "o":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v8}, Lcom/android/server/am/BroadcastFilter;->dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 192
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 113
    .end local v2    # "N":I
    .end local v4    # "i":I
    .end local v8    # "p2":Ljava/lang/String;
    .end local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :cond_10
    const-string/jumbo v11, "null"

    goto/16 :goto_0

    .line 117
    :cond_11
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/BroadcastRecord;->appOp:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    goto/16 :goto_1

    .line 140
    :cond_12
    const-string/jumbo v11, " receiverTime="

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/BroadcastRecord;->receiverTime:J

    move-object/from16 v0, p1

    invoke-static {v12, v13, v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 146
    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    if-eqz v11, :cond_6

    goto/16 :goto_3

    .line 173
    :cond_14
    const-string/jumbo v11, "--"

    goto/16 :goto_4

    .line 182
    .restart local v10    # "stateStr":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v10, " (APP_RECEIVE)"

    goto/16 :goto_5

    .line 183
    :pswitch_1
    const-string/jumbo v10, " (CALL_IN_RECEIVE)"

    goto/16 :goto_5

    .line 184
    :pswitch_2
    const-string/jumbo v10, " (CALL_DONE_RECEIVE)"

    goto/16 :goto_5

    .line 185
    :pswitch_3
    const-string/jumbo v10, " (WAITING_SERVICES)"

    goto/16 :goto_5

    .line 189
    .end local v10    # "stateStr":Ljava/lang/String;
    :cond_15
    const/4 v2, 0x0

    .restart local v2    # "N":I
    goto/16 :goto_6

    .line 196
    .restart local v4    # "i":I
    .restart local v5    # "o":Ljava/lang/Object;
    .restart local v8    # "p2":Ljava/lang/String;
    .restart local v9    # "printer":Landroid/util/PrintWriterPrinter;
    :pswitch_4
    const-string/jumbo v11, "Pending"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 197
    :pswitch_5
    const-string/jumbo v11, "Deliver"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_8

    .line 198
    :pswitch_6
    const-string/jumbo v11, "Skipped"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 199
    :pswitch_7
    const-string/jumbo v11, "Timeout"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 206
    :cond_16
    instance-of v11, v5, Landroid/content/pm/ResolveInfo;

    if-eqz v11, :cond_17

    .line 207
    const-string/jumbo v11, "(manifest)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .end local v5    # "o":Ljava/lang/Object;
    const/4 v11, 0x0

    invoke-virtual {v5, v9, v8, v11}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    goto :goto_9

    .line 210
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_17
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_9

    .line 100
    .end local v5    # "o":Ljava/lang/Object;
    :cond_18
    return-void

    .line 181
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 195
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BroadcastRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 286
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    const-string/jumbo v1, " u"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    iget v1, p0, Lcom/android/server/am/BroadcastRecord;->userId:I

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    const-string/jumbo v1, " "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 287
    const-string/jumbo v1, "}"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

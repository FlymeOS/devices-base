.class public Landroid/app/admin/SecurityLogTags;
.super Ljava/lang/Object;
.source "SecurityLogTags.java"


# static fields
.field public static final SECURITY_ADB_SHELL_COMMAND:I = 0x33452

.field public static final SECURITY_ADB_SHELL_INTERACTIVE:I = 0x33451

.field public static final SECURITY_ADB_SYNC_RECV:I = 0x33453

.field public static final SECURITY_ADB_SYNC_SEND:I = 0x33454

.field public static final SECURITY_APP_PROCESS_START:I = 0x33455

.field public static final SECURITY_KEYGUARD_DISMISSED:I = 0x33456

.field public static final SECURITY_KEYGUARD_DISMISS_AUTH_ATTEMPT:I = 0x33457

.field public static final SECURITY_KEYGUARD_SECURED:I = 0x33458


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeSecurityAdbShellCommand(Ljava/lang/String;)V
    .locals 1
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 42
    const v0, 0x33452

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 41
    return-void
.end method

.method public static writeSecurityAdbShellInteractive()V
    .locals 2

    .prologue
    .line 38
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33451

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 37
    return-void
.end method

.method public static writeSecurityAdbSyncRecv(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    const v0, 0x33453

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 45
    return-void
.end method

.method public static writeSecurityAdbSyncSend(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 50
    const v0, 0x33454

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 49
    return-void
.end method

.method public static writeSecurityAppProcessStart(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "seinfo"    # Ljava/lang/String;
    .param p6, "sha256"    # Ljava/lang/String;

    .prologue
    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/4 v1, 0x5

    aput-object p6, v0, v1

    const v1, 0x33455

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 53
    return-void
.end method

.method public static writeSecurityKeyguardDismissAuthAttempt(II)V
    .locals 3
    .param p0, "success"    # I
    .param p1, "methodStrength"    # I

    .prologue
    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x33457

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 61
    return-void
.end method

.method public static writeSecurityKeyguardDismissed()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33456

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 57
    return-void
.end method

.method public static writeSecurityKeyguardSecured()V
    .locals 2

    .prologue
    .line 66
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x33458

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 65
    return-void
.end method

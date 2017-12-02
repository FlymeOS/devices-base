.class public final Landroid/nfc/cardemulation/NfcFCardEmulation;
.super Ljava/lang/Object;
.source "NfcFCardEmulation.java"


# static fields
.field static final TAG:Ljava/lang/String; = "NfcFCardEmulation"

.field static sCardEmus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/nfc/cardemulation/NfcFCardEmulation;",
            ">;"
        }
    .end annotation
.end field

.field static sIsInitialized:Z

.field static sService:Landroid/nfc/INfcFCardEmulation;


# instance fields
.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/nfc/INfcFCardEmulation;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    .line 57
    sput-object p2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    .line 55
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/NfcFCardEmulation;
    .locals 8
    .param p0, "adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    const-class v6, Landroid/nfc/cardemulation/NfcFCardEmulation;

    monitor-enter v6

    .line 67
    if-nez p0, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v7, "NfcAdapter is null"

    invoke-direct {v5, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 70
    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "NfcAdapter context is null."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 73
    :cond_1
    sget-boolean v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    if-nez v5, :cond_4

    .line 74
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 75
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    if-nez v3, :cond_2

    .line 76
    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "Cannot get PackageManager"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    :cond_2
    :try_start_2
    const-string/jumbo v5, "android.hardware.nfc.hcef"

    const/4 v7, 0x0

    invoke-interface {v3, v5, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "This device does not support NFC-F card emulation"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "PackageManager query failed."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 88
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3
    const/4 v5, 0x1

    sput-boolean v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sIsInitialized:Z

    .line 90
    .end local v3    # "pm":Landroid/content/pm/IPackageManager;
    :cond_4
    sget-object v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    .line 91
    .local v2, "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    if-nez v2, :cond_6

    .line 93
    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    move-result-object v4

    .line 94
    .local v4, "service":Landroid/nfc/INfcFCardEmulation;
    if-nez v4, :cond_5

    .line 95
    const-string/jumbo v5, "NfcFCardEmulation"

    const-string/jumbo v7, "This device does not implement the INfcFCardEmulation interface."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 98
    :cond_5
    new-instance v2, Landroid/nfc/cardemulation/NfcFCardEmulation;

    .end local v2    # "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    invoke-direct {v2, v0, v4}, Landroid/nfc/cardemulation/NfcFCardEmulation;-><init>(Landroid/content/Context;Landroid/nfc/INfcFCardEmulation;)V

    .line 99
    .restart local v2    # "manager":Landroid/nfc/cardemulation/NfcFCardEmulation;
    sget-object v5, Landroid/nfc/cardemulation/NfcFCardEmulation;->sCardEmus:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v4    # "service":Landroid/nfc/INfcFCardEmulation;
    :cond_6
    monitor-exit v6

    .line 101
    return-object v2
.end method

.method public static isValidNfcid2(Ljava/lang/String;)Z
    .locals 5
    .param p0, "nfcid2"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x10

    const/4 v4, 0x0

    .line 452
    if-nez p0, :cond_0

    .line 453
    return v4

    .line 455
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 456
    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid NFCID2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return v4

    .line 460
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "02FE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 461
    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid NFCID2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return v4

    .line 465
    :cond_2
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    const/4 v1, 0x1

    return v1

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NFCID2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid NFCID2."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    return v4
.end method

.method public static isValidSystemCode(Ljava/lang/String;)Z
    .locals 5
    .param p0, "systemCode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 427
    if-nez p0, :cond_0

    .line 428
    return v4

    .line 430
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 431
    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid System Code."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v4

    .line 435
    :cond_1
    const-string/jumbo v1, "4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "FF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 436
    :cond_2
    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid System Code."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return v4

    .line 440
    :cond_3
    const/16 v1, 0x10

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    const/4 v1, 0x1

    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "NfcFCardEmulation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System Code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid System Code."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return v4
.end method


# virtual methods
.method public disableService(Landroid/app/Activity;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 354
    if-nez p1, :cond_0

    .line 355
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 361
    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 362
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 365
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_2

    .line 366
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return v4

    .line 370
    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->disableNfcFForegroundService()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 371
    :catch_1
    move-exception v1

    .line 372
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 374
    return v4
.end method

.method public enableService(Landroid/app/Activity;Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 317
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 318
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "activity or service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->isResumed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 322
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Activity must be resumed."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 325
    :cond_2
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 326
    :catch_0
    move-exception v0

    .line 328
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 329
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_3

    .line 330
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    return v4

    .line 334
    :cond_3
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2, p2}, Landroid/nfc/INfcFCardEmulation;->enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 335
    :catch_1
    move-exception v1

    .line 336
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 338
    return v4
.end method

.method public getMaxNumOfRegisterableSystemCodes()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 406
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 407
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 410
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_0

    .line 411
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return v4

    .line 415
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-interface {v2}, Landroid/nfc/INfcFCardEmulation;->getMaxNumOfRegisterableSystemCodes()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 416
    :catch_1
    move-exception v1

    .line 417
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return v4
.end method

.method public getNfcFServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 384
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 385
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 388
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_0

    .line 389
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-object v4

    .line 393
    :cond_0
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcFCardEmulation;->getNfcFServices(I)Ljava/util/List;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 394
    :catch_1
    move-exception v1

    .line 395
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    return-object v4
.end method

.method public getNfcid2ForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 230
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 233
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 234
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 237
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_1

    .line 238
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-object v4

    .line 242
    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 243
    :catch_1
    move-exception v1

    .line 244
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 246
    return-object v4
.end method

.method public getSystemCodeForService(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 125
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_1

    .line 126
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-object v4

    .line 130
    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 131
    :catch_1
    move-exception v1

    .line 132
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 134
    return-object v4
.end method

.method recoverService()V
    .locals 2

    .prologue
    .line 474
    iget-object v1, p0, Landroid/nfc/cardemulation/NfcFCardEmulation;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 475
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getNfcFCardEmulationService()Landroid/nfc/INfcFCardEmulation;

    move-result-object v1

    sput-object v1, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    .line 473
    return-void
.end method

.method public registerSystemCodeForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "systemCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 164
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service or systemCode is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 169
    :catch_0
    move-exception v0

    .line 171
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 172
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_2

    .line 173
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v4

    .line 177
    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 179
    :catch_1
    move-exception v1

    .line 180
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 182
    return v4
.end method

.method public setNfcid2ForService(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "nfcid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 272
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service or nfcid2 is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 276
    :cond_1
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 278
    :catch_0
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 281
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_2

    .line 282
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return v4

    .line 286
    :cond_2
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1, p2}, Landroid/nfc/INfcFCardEmulation;->setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 288
    :catch_1
    move-exception v1

    .line 289
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 291
    return v4
.end method

.method public unregisterSystemCodeForService(Landroid/content/ComponentName;)Z
    .locals 5
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 194
    if-nez p1, :cond_0

    .line 195
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "service is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_0
    :try_start_0
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 199
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/NfcFCardEmulation;->recoverService()V

    .line 202
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    if-nez v2, :cond_1

    .line 203
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to recover CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return v4

    .line 207
    :cond_1
    :try_start_1
    sget-object v2, Landroid/nfc/cardemulation/NfcFCardEmulation;->sService:Landroid/nfc/INfcFCardEmulation;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, v3, p1}, Landroid/nfc/INfcFCardEmulation;->removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    return v2

    .line 208
    :catch_1
    move-exception v1

    .line 209
    .local v1, "ee":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcFCardEmulation"

    const-string/jumbo v3, "Failed to reach CardEmulationService."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 211
    return v4
.end method

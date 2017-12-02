.class public Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;
.super Landroid/os/Handler;
.source "UiccCarrierPrivilegeRules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;,
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;,
        Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    }
.end annotation


# static fields
.field private static final AID:Ljava/lang/String; = "A00000015141434C00"

.field private static final CLA:I = 0x80

.field private static final COMMAND:I = 0xca

.field private static final DATA:Ljava/lang/String; = ""

.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x3

.field private static final EVENT_OPEN_LOGICAL_CHANNEL_DONE:I = 0x1

.field private static final EVENT_PKCS15_READ_DONE:I = 0x4

.field private static final EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "UiccCarrierPrivilegeRules"

.field private static final MAX_RETRY:I = 0x1

.field private static final P1:I = 0xff

.field private static final P2:I = 0x40

.field private static final P2_EXTENDED_DATA:I = 0x60

.field private static final P3:I = 0x0

.field private static final RETRY_INTERVAL_MS:I = 0x2710

.field private static final STATE_ERROR:I = 0x2

.field private static final STATE_LOADED:I = 0x1

.field private static final STATE_LOADING:I = 0x0

.field private static final TAG_ALL_REF_AR_DO:Ljava/lang/String; = "FF40"

.field private static final TAG_AR_DO:Ljava/lang/String; = "E3"

.field private static final TAG_DEVICE_APP_ID_REF_DO:Ljava/lang/String; = "C1"

.field private static final TAG_PERM_AR_DO:Ljava/lang/String; = "DB"

.field private static final TAG_PKG_REF_DO:Ljava/lang/String; = "CA"

.field private static final TAG_REF_AR_DO:Ljava/lang/String; = "E2"

.field private static final TAG_REF_DO:Ljava/lang/String; = "E1"


# instance fields
.field private mAccessRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;",
            ">;"
        }
    .end annotation
.end field

.field private mChannelId:I

.field private mLoadedCallback:Landroid/os/Message;

.field private mRetryCount:I

.field private final mRetryRunnable:Ljava/lang/Runnable;

.field private mRules:Ljava/lang/String;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mStatusMessage:Ljava/lang/String;

.field private mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field private mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;


# direct methods
.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V
    .locals 2
    .param p1, "uiccCard"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p2, "loadedCallback"    # Landroid/os/Message;

    .prologue
    .line 233
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 220
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$1;-><init>(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    .line 234
    const-string/jumbo v0, "Creating UiccCarrierPrivilegeRules"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 235
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 236
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 237
    const-string/jumbo v0, "Not loaded."

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    .line 238
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    .line 239
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    .line 242
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->openChannel()V

    .line 233
    return-void
.end method

.method private static getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B
    .locals 5
    .param p0, "signature"    # Landroid/content/pm/Signature;
    .param p1, "algo"    # Ljava/lang/String;

    .prologue
    .line 618
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 619
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 620
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 621
    .local v0, "ex":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v2, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NoSuchAlgorithmException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const/4 v2, 0x0

    return-object v2
.end method

.method private getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_1

    .line 411
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 412
    :cond_1
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 415
    :cond_2
    return-object v1
.end method

.method private getStateString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 670
    packed-switch p1, :pswitch_data_0

    .line 678
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 672
    :pswitch_0
    const-string/jumbo v0, "STATE_LOADING"

    return-object v0

    .line 674
    :pswitch_1
    const-string/jumbo v0, "STATE_LOADED"

    return-object v0

    .line 676
    :pswitch_2
    const-string/jumbo v0, "STATE_ERROR"

    return-object v0

    .line 670
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isDataComplete()Z
    .locals 5

    .prologue
    .line 514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDataComplete mRules:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 515
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    const-string/jumbo v3, "FF40"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 516
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v2, "FF40"

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 517
    .local v0, "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 518
    .local v1, "lengthBytes":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDataComplete lengthBytes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 519
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "FF40"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 520
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get0(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 519
    add-int/2addr v3, v4

    if-ne v2, v3, :cond_0

    .line 521
    const-string/jumbo v2, "isDataComplete yes"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 522
    const/4 v2, 0x1

    return v2

    .line 524
    :cond_0
    const-string/jumbo v2, "isDataComplete no"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 525
    const/4 v2, 0x0

    return v2

    .line 528
    .end local v0    # "allRules":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v1    # "lengthBytes":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Tags don\'t match."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 638
    return-void
.end method

.method private openChannel()V
    .locals 4

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const-string/jumbo v1, "A00000015141434C00"

    .line 230
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 229
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->iccOpenLogicalChannel(Ljava/lang/String;Landroid/os/Message;)V

    .line 227
    return-void
.end method

.method private static parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .locals 13
    .param p0, "rule"    # Ljava/lang/String;

    .prologue
    .line 560
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Got rule: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 562
    const/4 v4, 0x0

    .line 563
    .local v4, "certificateHash":Ljava/lang/String;
    const/4 v6, 0x0

    .line 564
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x0

    .line 565
    .local v10, "tmp":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 567
    .end local v4    # "certificateHash":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v10    # "tmp":Ljava/lang/String;
    .local v2, "accessType":J
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 568
    const-string/jumbo v11, "E1"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 569
    new-instance v9, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v11, "E1"

    invoke-direct {v9, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 570
    .local v9, "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x0

    invoke-virtual {v9, p0, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 573
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "C1"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 574
    const/4 v11, 0x0

    return-object v11

    .line 577
    :cond_0
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v11, "C1"

    invoke-direct {v5, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 578
    .local v5, "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-static {v9}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 579
    .local v10, "tmp":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v4

    .line 581
    .local v4, "certificateHash":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 582
    const-string/jumbo v11, "CA"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 583
    const/4 v11, 0x0

    return-object v11

    .line 585
    :cond_1
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v11, "CA"

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 586
    .local v8, "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 587
    new-instance v6, Ljava/lang/String;

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/lang/String;-><init>([B)V

    .local v6, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 589
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "pkgDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_2
    const/4 v6, 0x0

    .local v6, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 591
    .end local v4    # "certificateHash":Ljava/lang/String;
    .end local v5    # "deviceDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "refDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v10    # "tmp":Ljava/lang/String;
    :cond_3
    const-string/jumbo v11, "E3"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 592
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v11, "E3"

    invoke-direct {v1, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 593
    .local v1, "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v11, 0x0

    invoke-virtual {v1, p0, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 596
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "DB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 597
    const/4 v11, 0x0

    return-object v11

    .line 600
    :cond_4
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v11, "DB"

    invoke-direct {v7, v11}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 601
    .local v7, "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v7, v11, v12}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_0

    .line 604
    .end local v1    # "arDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    .end local v7    # "permDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_5
    new-instance v11, Ljava/lang/RuntimeException;

    const-string/jumbo v12, "Invalid Rule type"

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 608
    :cond_6
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v0, v11, v6, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;-><init>([BLjava/lang/String;J)V

    .line 610
    .local v0, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    return-object v0
.end method

.method private static parseRules(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Got rules: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 538
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v5, "FF40"

    invoke-direct {v2, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 539
    .local v2, "allRefArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x1

    invoke-virtual {v2, p0, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 541
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v3

    .line 542
    .local v3, "arDos":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 543
    .local v1, "accessRules":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 544
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string/jumbo v5, "E2"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 545
    .local v4, "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 546
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRefArdo(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    move-result-object v0

    .line 547
    .local v0, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    if-eqz v0, :cond_0

    .line 548
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 550
    :cond_0
    const-string/jumbo v5, "UiccCarrierPrivilegeRules"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Skip unrecognized rule."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->-get1(Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    .end local v0    # "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v4    # "refArDo":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;
    :cond_1
    return-object v1
.end method

.method private updateState(ILjava/lang/String;)V
    .locals 1
    .param p1, "newState"    # I
    .param p2, "statusMessage"    # Ljava/lang/String;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 635
    :cond_0
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    .line 629
    return-void
.end method


# virtual methods
.method public areCarrierPriviligeRulesLoaded()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 249
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "UiccCarrierPrivilegeRules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mStatusMessage=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mStatusMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 650
    const-string/jumbo v2, " mAccessRules: "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ar$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    .line 652
    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "  rule=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 655
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v1    # "ar$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, " mAccessRules: null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz v2, :cond_2

    .line 658
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mUiccPkcs15: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 663
    :goto_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 645
    return-void

    .line 661
    :cond_2
    const-string/jumbo v2, " mUiccPkcs15: null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 381
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .local v2, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    invoke-virtual {p1, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "resolveInfo$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 389
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getPackageName(Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v5

    .line 395
    .local v5, "status":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 396
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    :cond_1
    if-eqz v5, :cond_0

    .line 399
    return-object v8

    .line 403
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v5    # "status":I
    :cond_2
    return-object v1
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    .locals 7
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/4 v4, 0x0

    .line 342
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 343
    .local v2, "signatures":[Landroid/content/pm/Signature;
    array-length v5, v2

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v2, v3

    .line 344
    .local v1, "sig":Landroid/content/pm/Signature;
    iget-object v6, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I

    move-result v0

    .line 345
    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    .line 346
    return v0

    .line 343
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "accessStatus":I
    .end local v1    # "sig":Landroid/content/pm/Signature;
    :cond_1
    return v4
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 314
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->hasCarrierPrivilegeRules()Z

    move-result v3

    if-nez v3, :cond_2

    .line 315
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 316
    .local v2, "state":I
    if-nez v2, :cond_0

    .line 317
    const/4 v3, -0x1

    return v3

    .line 318
    :cond_0
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 319
    const/4 v3, -0x2

    return v3

    .line 321
    :cond_1
    return v5

    .line 327
    .end local v2    # "state":I
    :cond_2
    const v3, 0x8040

    .line 326
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 328
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 329
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 330
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "UiccCarrierPrivilegeRules"

    const-string/jumbo v4, "NameNotFoundException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    return v5
.end method

.method public getCarrierPrivilegeStatus(Landroid/content/pm/Signature;Ljava/lang/String;)I
    .locals 7
    .param p1, "signature"    # Landroid/content/pm/Signature;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 284
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    .line 285
    .local v4, "state":I
    if-nez v4, :cond_0

    .line 286
    const/4 v5, -0x1

    return v5

    .line 287
    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 288
    const/4 v5, -0x2

    return v5

    .line 292
    :cond_1
    const-string/jumbo v5, "SHA-1"

    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v2

    .line 293
    .local v2, "certHash":[B
    const-string/jumbo v5, "SHA-256"

    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCertHash(Landroid/content/pm/Signature;Ljava/lang/String;)[B

    move-result-object v3

    .line 294
    .local v3, "certHash256":[B
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ar$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    .line 295
    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    invoke-virtual {v0, v2, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v3, p2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->matches([BLjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    :cond_3
    const/4 v5, 0x1

    return v5

    .line 300
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    :cond_4
    return v6
.end method

.method public getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I
    .locals 6
    .param p1, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v4, 0x0

    .line 359
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "packages":[Ljava/lang/String;
    array-length v5, v1

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v2, v1, v3

    .line 362
    .local v2, "pkg":Ljava/lang/String;
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, "accessStatus":I
    if-eqz v0, :cond_0

    .line 364
    return v0

    .line 361
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 367
    .end local v0    # "accessStatus":I
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method public getPackageNames()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 267
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ar$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    .line 268
    .local v0, "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 269
    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 273
    .end local v0    # "ar":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v1    # "ar$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 422
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 505
    const-string/jumbo v2, "UiccCarrierPrivilegeRules"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_0
    return-void

    .line 425
    :pswitch_0
    const-string/jumbo v2, "EVENT_OPEN_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 427
    .local v12, "ar":Landroid/os/AsyncResult;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 428
    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const-string/jumbo v9, ""

    .line 430
    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 429
    const/16 v4, 0x80

    const/16 v5, 0xca

    const/16 v6, 0xff

    const/16 v7, 0x40

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0

    .line 434
    :cond_0
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 435
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    .line 436
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    .line 435
    if-ne v2, v3, :cond_1

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryCount:I

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 443
    :cond_1
    const-string/jumbo v2, "No ARA, try ARF next."

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 444
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccPkcs15;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 445
    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 444
    invoke-direct {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccPkcs15;-><init>(Lcom/android/internal/telephony/uicc/UiccCard;Landroid/os/Message;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    goto/16 :goto_0

    .line 451
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    const-string/jumbo v2, "EVENT_TRANSMIT_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 452
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Landroid/os/AsyncResult;

    .line 453
    .restart local v12    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v12, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_4

    iget-object v2, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 454
    iget-object v0, v12, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 455
    .local v18, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v3, 0x90

    if-ne v2, v3, :cond_3

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-nez v2, :cond_3

    .line 456
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v2, :cond_3

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v2, v2

    if-lez v2, :cond_3

    .line 458
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    .line 459
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->isDataComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mRules:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->parseRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    .line 461
    const-string/jumbo v2, "Success!"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    .end local v18    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    .line 482
    const/4 v4, 0x3

    .line 481
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    .line 483
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    goto/16 :goto_0

    .line 463
    .restart local v18    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    const-string/jumbo v9, ""

    .line 464
    new-instance v4, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mChannelId:I

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 463
    const/16 v4, 0x80

    const/16 v5, 0xca

    const/16 v6, 0xff

    const/16 v7, 0x60

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/UiccCard;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 467
    :catch_0
    move-exception v16

    .line 468
    .local v16, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error parsing rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_1

    .line 469
    .end local v16    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v17

    .line 470
    .local v17, "ex":Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error parsing rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto :goto_1

    .line 473
    .end local v17    # "ex":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid response: payload="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    const-string/jumbo v3, " sw1="

    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    const-string/jumbo v3, " sw2="

    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 474
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 473
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 475
    .local v15, "errorMsg":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 478
    .end local v15    # "errorMsg":Ljava/lang/String;
    .end local v18    # "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    :cond_4
    const-string/jumbo v2, "Error reading value from SIM."

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 487
    .end local v12    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    const-string/jumbo v2, "EVENT_CLOSE_LOGICAL_CHANNEL_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :pswitch_3
    const-string/jumbo v2, "EVENT_PKCS15_READ_DONE"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->log(Ljava/lang/String;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_6

    .line 493
    :cond_5
    const-string/jumbo v2, "No ARA or ARF."

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 495
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mUiccPkcs15:Lcom/android/internal/telephony/uicc/UiccPkcs15;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->getRules()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "cert$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 496
    .local v13, "cert":Ljava/lang/String;
    new-instance v11, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;

    .line 497
    invoke-static {v13}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, ""

    const-wide/16 v4, 0x0

    .line 496
    invoke-direct {v11, v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;-><init>([BLjava/lang/String;J)V

    .line 498
    .local v11, "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 500
    .end local v11    # "accessRule":Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$AccessRule;
    .end local v13    # "cert":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "Success!"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->updateState(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasCarrierPrivilegeRules()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules;->mAccessRules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

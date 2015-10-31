.class public final Lcom/android/internal/telephony/uicc/IsimUiccRecords;
.super Lcom/android/internal/telephony/uicc/IccRecords;
.source "IsimUiccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IsimRecords;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;,
        Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DUMP_RECORDS:Z = true

.field private static final EVENT_AKA_AUTHENTICATE_DONE:I = 0x5a

.field private static final EVENT_APP_READY:I = 0x1

.field private static final EVENT_ISIM_REFRESH:I = 0x1f

.field public static final INTENT_ISIM_REFRESH:Ljava/lang/String; = "com.android.intent.isim_refresh"

.field protected static final LOG_TAG:Ljava/lang/String; = "IsimUiccRecords"

.field private static final TAG_ISIM_VALUE:I = 0x80


# instance fields
.field private auth_rsp:Ljava/lang/String;

.field private mIsimDomain:Ljava/lang/String;

.field private mIsimImpi:Ljava/lang/String;

.field private mIsimImpu:[Ljava/lang/String;

.field private mIsimIst:Ljava/lang/String;

.field private mIsimPcscf:[Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 3
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "c"    # Landroid/content/Context;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    .line 82
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    .line 85
    iput v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->resetRecords()V

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsimUiccRecords X ctor this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->isimTlvToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/uicc/IsimUiccRecords;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/uicc/IsimUiccRecords;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/IsimUiccRecords;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    return-object p1
.end method

.method private handleFileUpdate(I)V
    .locals 5
    .param p1, "efid"    # I

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 306
    packed-switch p1, :pswitch_data_0

    .line 337
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    .line 340
    :goto_1
    return-void

    .line 308
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f02

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 310
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    goto :goto_1

    .line 314
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f04

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 316
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    goto :goto_1

    .line 320
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f03

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 322
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    goto :goto_1

    .line 326
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f07

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 328
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    goto :goto_1

    .line 332
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f09

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 334
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    goto :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x6f02
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private handleIsimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 2
    .param p1, "refreshResponse"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v0, "handleIsimRefresh received without input"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 378
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    const-string v0, "handleIsimRefresh received different app"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_1
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    packed-switch v0, :pswitch_data_0

    .line 375
    const-string v0, "handleIsimRefresh with unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :pswitch_0
    const-string v0, "handleIsimRefresh with REFRESH_RESULT_FILE_UPDATE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 358
    iget v0, p1, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->efId:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->handleFileUpdate(I)V

    goto :goto_0

    .line 362
    :pswitch_1
    const-string v0, "handleIsimRefresh with REFRESH_RESULT_INIT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    goto :goto_0

    .line 370
    :pswitch_2
    const-string v0, "handleIsimRefresh with REFRESH_RESULT_RESET"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isimTlvToString([B)Ljava/lang/String;
    .locals 4
    .param p0, "record"    # [B

    .prologue
    .line 272
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 274
    .local v0, "tlv":Lcom/android/internal/telephony/gsm/SimTlv;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    .line 275
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 280
    :goto_0
    return-object v1

    .line 277
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    const-string v1, "IsimUiccRecords"

    const-string v2, "[ISIM] can\'t find TLV tag in ISIM record, returning null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disposing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 99
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->resetRecords()V

    .line 101
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->dispose()V

    .line 102
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsimRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 501
    const-string v0, " extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsimImpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsimDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsimImpu[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsimIst"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsimPcscf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 509
    return-void
.end method

.method protected fetchIsimRecords()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x64

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f02

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpiLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 166
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f04

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimImpuLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 170
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 172
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f03

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimDomainLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 174
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 175
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f07

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimIstLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 177
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0x6f09

    new-instance v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;

    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords$EfIsimPcscfLoaded;-><init>(Lcom/android/internal/telephony/uicc/IsimUiccRecords;Lcom/android/internal/telephony/uicc/IsimUiccRecords$1;)V

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 180
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchIsimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public getDisplayRule(Ljava/lang/String;)I
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 459
    const/4 v0, 0x0

    return v0
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsimChallengeResponse-nonce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 438
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 439
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x5a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Lcom/android/internal/telephony/CommandsInterface;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 445
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsimChallengeResponse-auth_rsp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    :goto_1
    return-object v1

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v1, "interrupted while trying to request Isim Auth"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 445
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 446
    :catch_1
    move-exception v0

    .line 447
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Fail while trying to request Isim Auth"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 448
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    return-object v0
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 108
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 109
    const-string v4, "IsimUiccRecords"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received message "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] while being destroyed. Ignoring."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsimUiccRecords: handleMessage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 116
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v2

    .line 157
    .local v2, "exc":Ljava/lang/RuntimeException;
    const-string v4, "IsimUiccRecords"

    const-string v5, "Exception parsing SIM record"

    invoke-static {v4, v5, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    .end local v2    # "exc":Ljava/lang/RuntimeException;
    :sswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->onReady()V

    goto :goto_0

    .line 122
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 123
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISim REFRESH(EVENT_ISIM_REFRESH) with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 124
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 125
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.intent.isim_refresh"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "send ISim REFRESH: com.android.intent.isim_refresh"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 128
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->handleIsimRefresh(Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    .line 133
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "intent":Landroid/content/Intent;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 134
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    const-string v4, "EVENT_AKA_AUTHENTICATE_DONE"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 135
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception ISIM AKA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 145
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 146
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 147
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 139
    :cond_2
    :try_start_4
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ISIM AKA: auth_rsp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 141
    :catch_1
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse ISIM AKA contents: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1f -> :sswitch_1
        0x5a -> :sswitch_2
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 490
    const-string v0, "IsimUiccRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 495
    const-string v0, "IsimUiccRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ISIM] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void
.end method

.method protected onAllRecordsLoaded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 300
    const-string v0, "record load complete"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 303
    return-void
.end method

.method public onReady()V
    .locals 0

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    .line 465
    return-void
.end method

.method protected onRecordLoaded()V
    .locals 2

    .prologue
    .line 287
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRecordLoaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->log(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->onAllRecordsLoaded()V

    .line 296
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    if-gez v0, :cond_0

    .line 293
    const-string v0, "recordsToLoad <0, programmer error suspected"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->loge(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsToLoad:I

    goto :goto_0
.end method

.method public onRefresh(Z[I)V
    .locals 0
    .param p1, "fileChanged"    # Z
    .param p2, "fileList"    # [I

    .prologue
    .line 469
    if-eqz p1, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->fetchIsimRecords()V

    .line 475
    :cond_0
    return-void
.end method

.method protected resetRecords()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    .line 190
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    .line 191
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    .line 192
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    .line 194
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->auth_rsp:Ljava/lang/String;

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mRecordsRequested:Z

    .line 197
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 481
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 486
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsimUiccRecords: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsimImpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsimDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsimImpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimImpu:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsimIst="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimIst:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsimPcscf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IsimUiccRecords;->mIsimPcscf:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

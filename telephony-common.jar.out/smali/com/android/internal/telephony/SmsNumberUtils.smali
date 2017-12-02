.class public Lcom/android/internal/telephony/SmsNumberUtils;
.super Ljava/lang/Object;
.source "SmsNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    }
.end annotation


# static fields
.field private static ALL_COUNTRY_CODES:[I = null

.field private static final CDMA_HOME_NETWORK:I = 0x1

.field private static final CDMA_ROAMING_NETWORK:I = 0x2

.field private static final DBG:Z

.field private static final GSM_UMTS_NETWORK:I = 0x0

.field private static IDDS_MAPS:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MAX_COUNTRY_CODES_LENGTH:I = 0x0

.field private static final MIN_COUNTRY_AREA_LOCAL_LENGTH:I = 0xa

.field private static final NANP_CC:I = 0x1

.field private static final NANP_IDD:Ljava/lang/String; = "011"

.field private static final NANP_LONG_LENGTH:I = 0xb

.field private static final NANP_MEDIUM_LENGTH:I = 0xa

.field private static final NANP_NDD:Ljava/lang/String; = "1"

.field private static final NANP_SHORT_LENGTH:I = 0x7

.field private static final NP_CC_AREA_LOCAL:I = 0x68

.field private static final NP_HOMEIDD_CC_AREA_LOCAL:I = 0x65

.field private static final NP_INTERNATIONAL_BEGIN:I = 0x64

.field private static final NP_LOCALIDD_CC_AREA_LOCAL:I = 0x67

.field private static final NP_NANP_AREA_LOCAL:I = 0x2

.field private static final NP_NANP_BEGIN:I = 0x1

.field private static final NP_NANP_LOCAL:I = 0x1

.field private static final NP_NANP_LOCALIDD_CC_AREA_LOCAL:I = 0x5

.field private static final NP_NANP_NBPCD_CC_AREA_LOCAL:I = 0x4

.field private static final NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x6

.field private static final NP_NANP_NDD_AREA_LOCAL:I = 0x3

.field private static final NP_NBPCD_CC_AREA_LOCAL:I = 0x66

.field private static final NP_NBPCD_HOMEIDD_CC_AREA_LOCAL:I = 0x64

.field private static final NP_NONE:I = 0x0

.field private static final PLUS_SIGN:Ljava/lang/String; = "+"

.field private static final TAG:Ljava/lang/String; = "SmsNumberUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    .line 98
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .param p3, "homeIDD"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p2, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 376
    iget-object v3, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 377
    .local v3, "number":Ljava/lang/String;
    const/4 v0, -0x1

    .line 379
    .local v0, "countryCode":I
    const-string/jumbo v7, "+"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 381
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, "numberNoNBPCD":Ljava/lang/String;
    invoke-virtual {v6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 384
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 386
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 387
    const/16 v7, 0x64

    return v7

    .line 389
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_0
    invoke-static {p0, v6}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 390
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 391
    const/16 v7, 0x66

    return v7

    .line 394
    .end local v6    # "numberNoNBPCD":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 396
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 397
    .restart local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 398
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 399
    const/16 v7, 0x65

    return v7

    .line 402
    .end local v4    # "numberCountryAreaLocal":Ljava/lang/String;
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "exitCode$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 403
    .local v1, "exitCode":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 404
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "numberNoIDD":Ljava/lang/String;
    invoke-static {p0, v5}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 406
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 407
    iput-object v1, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 408
    const/16 v7, 0x67

    return v7

    .line 413
    .end local v1    # "exitCode":Ljava/lang/String;
    .end local v5    # "numberNoIDD":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {p0, v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getCountryCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_5

    .line 414
    iput v0, p1, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 415
    const/16 v7, 0x68

    return v7

    .line 418
    .end local v2    # "exitCode$iterator":Ljava/util/Iterator;
    :cond_5
    return v8
.end method

.method private static checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I
    .locals 14
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0xb

    const/4 v9, 0x7

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 292
    const/4 v5, 0x0

    .line 293
    .local v5, "isNANP":Z
    iget-object v6, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    .line 295
    .local v6, "number":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v9, :cond_2

    .line 297
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 298
    .local v1, "firstChar":C
    const/16 v8, 0x32

    if-lt v1, v8, :cond_0

    const/16 v8, 0x39

    if-gt v1, v8, :cond_0

    .line 299
    const/4 v5, 0x1

    .line 300
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v9, :cond_0

    .line 301
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 302
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v8

    if-nez v8, :cond_1

    .line 303
    const/4 v5, 0x0

    .line 308
    .end local v0    # "c":C
    .end local v2    # "i":I
    :cond_0
    if-eqz v5, :cond_8

    .line 309
    return v10

    .line 300
    .restart local v0    # "c":C
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v0    # "c":C
    .end local v1    # "firstChar":C
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_3

    .line 313
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 314
    const/4 v8, 0x2

    return v8

    .line 316
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v13, :cond_4

    .line 319
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 320
    return v12

    .line 322
    :cond_4
    const-string/jumbo v8, "+"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 323
    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 324
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v13, :cond_5

    .line 327
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 328
    const/4 v8, 0x4

    return v8

    .line 330
    :cond_5
    const-string/jumbo v8, "011"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xe

    if-ne v8, v9, :cond_8

    .line 333
    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 334
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 335
    const/4 v8, 0x6

    return v8

    .line 340
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "idd$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 341
    .local v3, "idd":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 342
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, "number2":Ljava/lang/String;
    if-eqz v7, :cond_7

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 344
    invoke-static {v7}, Lcom/android/internal/telephony/SmsNumberUtils;->isNANP(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 345
    iput-object v3, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    .line 346
    const/4 v8, 0x5

    return v8

    .line 353
    .end local v3    # "idd":Ljava/lang/String;
    .end local v4    # "idd$iterator":Ljava/util/Iterator;
    .end local v7    # "number2":Ljava/lang/String;
    :cond_8
    return v11
.end method

.method private static compareGid1(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "serviceGid1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 625
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "gid1":Ljava/lang/String;
    const/4 v2, 0x1

    .line 628
    .local v2, "ret":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 629
    sget-boolean v3, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SmsNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compareGid1 serviceGid is empty, return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_0
    return v2

    .line 633
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 635
    .local v1, "gid_length":I
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v1, :cond_2

    .line 636
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 635
    :cond_2
    if-nez v3, :cond_4

    .line 637
    sget-boolean v3, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SmsNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " gid1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " serviceGid1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_3
    const/4 v2, 0x0

    .line 640
    :cond_4
    sget-boolean v3, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v4, "SmsNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "compareGid1 is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_6

    const-string/jumbo v3, "Same"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_5
    return v2

    .line 640
    :cond_6
    const-string/jumbo v3, "Different"

    goto :goto_0
.end method

.method public static filterDestAddr(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "destAddr"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 531
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SmsNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "enter filterDestAddr. destAddr=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    if-eqz p1, :cond_3

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 538
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    .line 538
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, "networkOperator":Ljava/lang/String;
    const/4 v3, 0x0

    .line 542
    .local v3, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->needToConvert(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getNetworkType(Lcom/android/internal/telephony/Phone;)I

    move-result v2

    .line 544
    .local v2, "networkType":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 552
    .end local v2    # "networkType":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_1
    :goto_0
    sget-boolean v4, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v4, :cond_2

    .line 553
    const-string/jumbo v5, "SmsNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destAddr is "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_5

    const-string/jumbo v4, "formatted."

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string/jumbo v5, "SmsNumberUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "leave filterDestAddr, new destAddr=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_6

    move-object v4, v3

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :cond_2
    if-eqz v3, :cond_7

    :goto_3
    return-object v3

    .line 534
    .end local v1    # "networkOperator":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "SmsNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "destAddr"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a global phone number! Nothing changed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-object p1

    .line 545
    .restart local v1    # "networkOperator":Ljava/lang/String;
    .restart local v2    # "networkType":I
    .restart local v3    # "result":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x3

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "networkMcc":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 547
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p1, v0, v2}, Lcom/android/internal/telephony/SmsNumberUtils;->formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, "result":Ljava/lang/String;
    goto/16 :goto_0

    .line 553
    .end local v0    # "networkMcc":Ljava/lang/String;
    .end local v2    # "networkType":I
    .end local v3    # "result":Ljava/lang/String;
    :cond_5
    const-string/jumbo v4, "not formatted."

    goto :goto_1

    :cond_6
    move-object v4, p1

    .line 554
    goto :goto_2

    :cond_7
    move-object v3, p1

    .line 556
    goto :goto_3
.end method

.method private static formatNumber(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "activeMcc"    # Ljava/lang/String;
    .param p3, "networkType"    # I

    .prologue
    .line 124
    if-nez p1, :cond_0

    .line 125
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "number is null"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 128
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 129
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "activeMcc is null or empty!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "networkPortionNumber":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    .line 134
    :cond_3
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Number is invalid!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    invoke-direct {v6, v5}, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;-><init>(Ljava/lang/String;)V

    .line 138
    .local v6, "numberEntry":Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
    invoke-static {p0, p2}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 141
    .local v0, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v6, v0}, Lcom/android/internal/telephony/SmsNumberUtils;->checkNANP(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;)I

    move-result v4

    .line 142
    .local v4, "nanpState":I
    sget-boolean v8, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "SmsNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NANP type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_5
    const/4 v8, 0x1

    if-eq v4, v8, :cond_6

    .line 145
    const/4 v8, 0x2

    if-ne v4, v8, :cond_7

    .line 147
    :cond_6
    return-object v5

    .line 146
    :cond_7
    const/4 v8, 0x3

    if-eq v4, v8, :cond_6

    .line 148
    const/4 v8, 0x4

    if-ne v4, v8, :cond_a

    .line 149
    const/4 v8, 0x1

    if-eq p3, v8, :cond_8

    .line 150
    const/4 v8, 0x2

    if-ne p3, v8, :cond_9

    .line 152
    :cond_8
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 154
    :cond_9
    return-object v5

    .line 156
    :cond_a
    const/4 v8, 0x5

    if-ne v4, v8, :cond_f

    .line 157
    const/4 v8, 0x1

    if-ne p3, v8, :cond_b

    .line 158
    return-object v5

    .line 159
    :cond_b
    if-nez p3, :cond_d

    .line 161
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_c

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 162
    .local v2, "iddLength":I
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 161
    .end local v2    # "iddLength":I
    :cond_c
    const/4 v2, 0x0

    .restart local v2    # "iddLength":I
    goto :goto_0

    .line 163
    .end local v2    # "iddLength":I
    :cond_d
    const/4 v8, 0x2

    if-ne p3, v8, :cond_f

    .line 165
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_e

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 166
    .restart local v2    # "iddLength":I
    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 165
    .end local v2    # "iddLength":I
    :cond_e
    const/4 v2, 0x0

    goto :goto_1

    .line 171
    :cond_f
    const-string/jumbo v8, "011"

    .line 170
    invoke-static {p0, v6, v0, v8}, Lcom/android/internal/telephony/SmsNumberUtils;->checkInternationalNumberPlan(Landroid/content/Context;Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v3

    .line 172
    .local v3, "internationalState":I
    sget-boolean v8, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v8, :cond_10

    const-string/jumbo v8, "SmsNumberUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "International type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/android/internal/telephony/SmsNumberUtils;->getNumberPlanType(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_10
    const/4 v7, 0x0

    .line 175
    .local v7, "returnNumber":Ljava/lang/String;
    packed-switch v3, :pswitch_data_0

    .line 213
    const-string/jumbo v8, "+"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 214
    const/4 v8, 0x1

    if-eq p3, v8, :cond_11

    const/4 v8, 0x2

    if-ne p3, v8, :cond_12

    .line 215
    :cond_11
    const-string/jumbo v8, "+011"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 217
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 225
    .end local v7    # "returnNumber":Ljava/lang/String;
    :cond_12
    :goto_2
    if-nez v7, :cond_13

    .line 226
    move-object v7, v5

    .line 228
    :cond_13
    return-object v7

    .line 177
    .restart local v7    # "returnNumber":Ljava/lang/String;
    :pswitch_0
    if-nez p3, :cond_12

    .line 179
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    .line 185
    .local v7, "returnNumber":Ljava/lang/String;
    :pswitch_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    .line 189
    .local v7, "returnNumber":Ljava/lang/String;
    :pswitch_2
    if-eqz p3, :cond_14

    const/4 v8, 0x2

    if-ne p3, v8, :cond_12

    .line 190
    :cond_14
    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    if-eqz v8, :cond_15

    iget-object v8, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->IDD:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v2

    .line 192
    .restart local v2    # "iddLength":I
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    .line 190
    .end local v2    # "iddLength":I
    .local v7, "returnNumber":Ljava/lang/String;
    :cond_15
    const/4 v2, 0x0

    .restart local v2    # "iddLength":I
    goto :goto_3

    .line 197
    .end local v2    # "iddLength":I
    :pswitch_3
    iget v1, v6, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 199
    .local v1, "countryCode":I
    invoke-static {v6}, Lcom/android/internal/telephony/SmsNumberUtils;->inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 200
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    if-lt v8, v9, :cond_12

    const/4 v8, 0x1

    if-eq v1, v8, :cond_12

    .line 202
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    .line 207
    .end local v1    # "countryCode":I
    .local v7, "returnNumber":Ljava/lang/String;
    :pswitch_4
    move-object v7, v5

    .line 208
    .local v7, "returnNumber":Ljava/lang/String;
    goto :goto_2

    .line 220
    .local v7, "returnNumber":Ljava/lang/String;
    :cond_16
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "011"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, "returnNumber":Ljava/lang/String;
    goto/16 :goto_2

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getAllCountryCodes(Landroid/content/Context;)[I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 456
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    if-eqz v0, :cond_0

    .line 457
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    return-object v0

    .line 460
    :cond_0
    const/4 v7, 0x0

    .line 462
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "Country_Code"

    const/4 v1, 0x0

    aput-object v0, v2, v1

    .line 463
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccLookup;->CONTENT_URI:Landroid/net/Uri;

    .line 464
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 463
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 466
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 467
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    .line 468
    const/4 v9, 0x0

    .local v9, "i":I
    move v10, v9

    .line 469
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 470
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 471
    .local v6, "countryCode":I
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    aput v6, v0, v10

    .line 472
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 473
    .local v11, "length":I
    sget v0, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-le v11, v0, :cond_1

    .line 474
    sput v11, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    move v10, v9

    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_0

    .line 481
    .end local v6    # "countryCode":I
    .end local v10    # "i":I
    .end local v11    # "length":I
    :cond_2
    if-eqz v7, :cond_3

    .line 482
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 485
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "cursor":Landroid/database/Cursor;
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->ALL_COUNTRY_CODES:[I

    return-object v0

    .line 478
    :catch_0
    move-exception v8

    .line 479
    .local v8, "e":Landroid/database/SQLException;
    :try_start_1
    const-string/jumbo v0, "SmsNumberUtils"

    const-string/jumbo v1, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 481
    if-eqz v7, :cond_3

    .line 482
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 480
    .end local v8    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    .line 481
    if-eqz v7, :cond_4

    .line 482
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_4
    throw v0
.end method

.method private static getAllIDDs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 239
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 240
    .local v6, "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 241
    return-object v6

    .line 243
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .restart local v6    # "allIDDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "IDD"

    aput-object v0, v2, v1

    const-string/jumbo v0, "MCC"

    aput-object v0, v2, v5

    .line 247
    .local v2, "projection":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 251
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x0

    .line 252
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 253
    const-string/jumbo v3, "MCC=?"

    .line 254
    .local v3, "where":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    .end local v4    # "selectionArgs":[Ljava/lang/String;
    aput-object p1, v4, v1

    .line 257
    .end local v3    # "where":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 259
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/HbpcdLookup$MccIdd;->CONTENT_URI:Landroid/net/Uri;

    .line 260
    const/4 v5, 0x0

    .line 259
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 261
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 262
    :cond_2
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 264
    .local v9, "idd":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 269
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v9    # "idd":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 270
    .local v8, "e":Landroid/database/SQLException;
    :try_start_1
    const-string/jumbo v0, "SmsNumberUtils"

    const-string/jumbo v1, "Can\'t access HbpcdLookup database"

    invoke-static {v0, v1, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    if-eqz v7, :cond_3

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 277
    .end local v8    # "e":Landroid/database/SQLException;
    :cond_3
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/SmsNumberUtils;->IDDS_MAPS:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-boolean v0, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SmsNumberUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MCC = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ", all IDDs = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_4
    return-object v6

    .line 272
    .restart local v7    # "cursor":Landroid/database/Cursor;
    :cond_5
    if-eqz v7, :cond_3

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 271
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 272
    if-eqz v7, :cond_6

    .line 273
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_6
    throw v0
.end method

.method private static getCountryCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 425
    const/4 v2, -0x1

    .line 426
    .local v2, "countryCode":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0xa

    if-lt v6, v7, :cond_5

    .line 428
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->getAllCountryCodes(Landroid/content/Context;)[I

    move-result-object v0

    .line 429
    .local v0, "allCCs":[I
    if-nez v0, :cond_0

    .line 430
    return v2

    .line 433
    :cond_0
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    new-array v1, v6, [I

    .line 434
    .local v1, "ccArray":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v3, v6, :cond_1

    .line 435
    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v3

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    :cond_1
    const/4 v3, 0x0

    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_5

    .line 439
    aget v5, v0, v3

    .line 440
    .local v5, "tempCC":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    sget v6, Lcom/android/internal/telephony/SmsNumberUtils;->MAX_COUNTRY_CODES_LENGTH:I

    if-ge v4, v6, :cond_4

    .line 441
    aget v6, v1, v4

    if-ne v5, v6, :cond_3

    .line 442
    sget-boolean v6, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SmsNumberUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Country code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_2
    return v5

    .line 440
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 438
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 449
    .end local v0    # "allCCs":[I
    .end local v1    # "ccArray":[I
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "tempCC":I
    :cond_5
    return v2
.end method

.method private static getNetworkType(Lcom/android/internal/telephony/Phone;)I
    .locals 5
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 563
    const/4 v0, -0x1

    .line 564
    .local v0, "networkType":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 566
    .local v1, "phoneType":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 567
    const/4 v0, 0x0

    .line 578
    :cond_0
    :goto_0
    return v0

    .line 568
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 569
    invoke-static {p0}, Lcom/android/internal/telephony/SmsNumberUtils;->isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 570
    const/4 v0, 0x2

    goto :goto_0

    .line 572
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 575
    :cond_3
    sget-boolean v2, Lcom/android/internal/telephony/SmsNumberUtils;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SmsNumberUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "warning! unknown mPhoneType value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static getNumberPlanType(I)Ljava/lang/String;
    .locals 3
    .param p0, "state"    # I

    .prologue
    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Number Plan type ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "numberPlanType":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 500
    const-string/jumbo v0, "NP_NANP_LOCAL"

    .line 524
    :goto_0
    return-object v0

    .line 501
    :cond_0
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 502
    const-string/jumbo v0, "NP_NANP_AREA_LOCAL"

    goto :goto_0

    .line 503
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 504
    const-string/jumbo v0, "NP_NANP_NDD_AREA_LOCAL"

    goto :goto_0

    .line 505
    :cond_2
    const/4 v1, 0x4

    if-ne p0, v1, :cond_3

    .line 506
    const-string/jumbo v0, "NP_NANP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    .line 507
    :cond_3
    const/4 v1, 0x5

    if-ne p0, v1, :cond_4

    .line 508
    const-string/jumbo v0, "NP_NANP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 509
    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    .line 510
    const-string/jumbo v0, "NP_NANP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 511
    :cond_5
    const/16 v1, 0x64

    if-ne p0, v1, :cond_6

    .line 512
    const-string/jumbo v0, "NP_NBPCD_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 513
    :cond_6
    const/16 v1, 0x65

    if-ne p0, v1, :cond_7

    .line 514
    const-string/jumbo v0, "NP_HOMEIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 515
    :cond_7
    const/16 v1, 0x66

    if-ne p0, v1, :cond_8

    .line 516
    const-string/jumbo v0, "NP_NBPCD_CC_AREA_LOCAL"

    goto :goto_0

    .line 517
    :cond_8
    const/16 v1, 0x67

    if-ne p0, v1, :cond_9

    .line 518
    const-string/jumbo v0, "NP_LOCALIDD_CC_AREA_LOCAL"

    goto :goto_0

    .line 519
    :cond_9
    const/16 v1, 0x68

    if-ne p0, v1, :cond_a

    .line 520
    const-string/jumbo v0, "NP_CC_AREA_LOCAL"

    goto :goto_0

    .line 522
    :cond_a
    const-string/jumbo v0, "Unknown type"

    goto :goto_0
.end method

.method private static inExceptionListForNpCcAreaLocal(Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;)Z
    .locals 5
    .param p0, "numberEntry"    # Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 489
    iget v0, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->countryCode:I

    .line 490
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_2

    .line 491
    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    .line 493
    .local v1, "result":Z
    :cond_0
    :goto_0
    return v1

    .line 492
    .end local v1    # "result":Z
    :cond_1
    const/16 v3, 0x41

    if-eq v0, v3, :cond_0

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 490
    goto :goto_0
.end method

.method private static isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x0

    .line 582
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 583
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 582
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    .line 584
    .local v1, "operatorIsoCountry":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 585
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 584
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v2

    .line 586
    .local v2, "simIsoCountry":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 587
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v0, v3

    .line 589
    .local v0, "internationalRoaming":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 590
    const-string/jumbo v3, "us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 591
    const-string/jumbo v3, "vi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x0

    .line 596
    .end local v0    # "internationalRoaming":Z
    :cond_1
    :goto_1
    return v0

    .line 588
    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    .line 591
    .restart local v0    # "internationalRoaming":Z
    :cond_4
    const/4 v0, 0x1

    .local v0, "internationalRoaming":Z
    goto :goto_1

    .line 592
    .local v0, "internationalRoaming":Z
    :cond_5
    const-string/jumbo v3, "vi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 593
    const-string/jumbo v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v0, 0x0

    .local v0, "internationalRoaming":Z
    goto :goto_1

    .local v0, "internationalRoaming":Z
    :cond_6
    const/4 v0, 0x1

    .local v0, "internationalRoaming":Z
    goto :goto_1
.end method

.method private static isNANP(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xb

    .line 357
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 357
    if-eqz v0, :cond_2

    .line 359
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 362
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 364
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static needToConvert(Lcom/android/internal/telephony/Phone;)Z
    .locals 8
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "bNeedToConvert":Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 602
    const v5, 0x107004b

    .line 601
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "listArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v4, v2

    if-lez v4, :cond_2

    .line 605
    const/4 v1, 0x0

    .end local v0    # "bNeedToConvert":Z
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 606
    aget-object v4, v2, v1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 607
    aget-object v4, v2, v1

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 608
    .local v3, "needToConvertArray":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    .line 609
    array-length v4, v3

    if-ne v4, v7, :cond_1

    .line 610
    const-string/jumbo v4, "true"

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 605
    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 611
    .restart local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_1
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 612
    aget-object v4, v3, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 613
    aget-object v4, v3, v7

    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsNumberUtils;->compareGid1(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v4

    .line 611
    if-eqz v4, :cond_0

    .line 614
    const-string/jumbo v4, "true"

    aget-object v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 621
    .end local v1    # "i":I
    .end local v3    # "needToConvertArray":[Ljava/lang/String;
    :cond_2
    return v0
.end method

.class public final Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
.super Landroid/os/Handler;
.source "ImsPhoneMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field private static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field private static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field private static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field private static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field private static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field private static final CLIR_DEFAULT:I = 0x0

.field private static final CLIR_INVOCATION:I = 0x1

.field private static final CLIR_NOT_PROVISIONED:I = 0x0

.field private static final CLIR_PRESENTATION_ALLOWED_TEMPORARY:I = 0x4

.field private static final CLIR_PRESENTATION_RESTRICTED_TEMPORARY:I = 0x3

.field private static final CLIR_PROVISIONED_PERMANENT:I = 0x1

.field private static final CLIR_SUPPRESSION:I = 0x2

.field private static final END_OF_USSD_COMMAND:C = '#'

.field private static final EVENT_GET_CLIR_COMPLETE:I = 0x6

.field private static final EVENT_QUERY_CF_COMPLETE:I = 0x1

.field private static final EVENT_QUERY_COMPLETE:I = 0x3

.field private static final EVENT_QUERY_ICB_COMPLETE:I = 0xa

.field private static final EVENT_SET_CFF_COMPLETE:I = 0x4

.field private static final EVENT_SET_COMPLETE:I = 0x0

.field private static final EVENT_SUPP_SVC_QUERY_COMPLETE:I = 0x7

.field private static final EVENT_USSD_CANCEL_COMPLETE:I = 0x5

.field private static final EVENT_USSD_COMPLETE:I = 0x2

.field static final IcbAnonymousMmi:Ljava/lang/String; = "Anonymous Incoming Call Barring"

.field static final IcbDnMmi:Ljava/lang/String; = "Specific Incoming Call Barring"

.field static final LOG_TAG:Ljava/lang/String; = "ImsPhoneMmiCode"

.field private static final MATCH_GROUP_ACTION:I = 0x2

.field private static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field private static final MATCH_GROUP_POUND_STRING:I = 0x1

.field private static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field private static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field private static final MATCH_GROUP_SIA:I = 0x5

.field private static final MATCH_GROUP_SIB:I = 0x7

.field private static final MATCH_GROUP_SIC:I = 0x9

.field private static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field private static final NUM_PRESENTATION_ALLOWED:I = 0x0

.field private static final NUM_PRESENTATION_RESTRICTED:I = 0x1

.field private static final SC_BAIC:Ljava/lang/String; = "35"

.field private static final SC_BAICa:Ljava/lang/String; = "157"

.field private static final SC_BAICr:Ljava/lang/String; = "351"

.field private static final SC_BAOC:Ljava/lang/String; = "33"

.field private static final SC_BAOIC:Ljava/lang/String; = "331"

.field private static final SC_BAOICxH:Ljava/lang/String; = "332"

.field private static final SC_BA_ALL:Ljava/lang/String; = "330"

.field private static final SC_BA_MO:Ljava/lang/String; = "333"

.field private static final SC_BA_MT:Ljava/lang/String; = "353"

.field private static final SC_BS_MT:Ljava/lang/String; = "156"

.field private static final SC_CFB:Ljava/lang/String; = "67"

.field private static final SC_CFNR:Ljava/lang/String; = "62"

.field private static final SC_CFNRy:Ljava/lang/String; = "61"

.field private static final SC_CFU:Ljava/lang/String; = "21"

.field private static final SC_CFUT:Ljava/lang/String; = "22"

.field private static final SC_CF_All:Ljava/lang/String; = "002"

.field private static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field private static final SC_CLIP:Ljava/lang/String; = "30"

.field private static final SC_CLIR:Ljava/lang/String; = "31"

.field private static final SC_CNAP:Ljava/lang/String; = "300"

.field private static final SC_COLP:Ljava/lang/String; = "76"

.field private static final SC_COLR:Ljava/lang/String; = "77"

.field private static final SC_PIN:Ljava/lang/String; = "04"

.field private static final SC_PIN2:Ljava/lang/String; = "042"

.field private static final SC_PUK:Ljava/lang/String; = "05"

.field private static final SC_PUK2:Ljava/lang/String; = "052"

.field private static final SC_PWD:Ljava/lang/String; = "03"

.field private static final SC_WAIT:Ljava/lang/String; = "43"

.field public static final UT_BUNDLE_KEY_CLIR:Ljava/lang/String; = "queryClir"

.field public static final UT_BUNDLE_KEY_SSINFO:Ljava/lang/String; = "imsSsInfo"

.field private static sPatternSuppService:Ljava/util/regex/Pattern;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field private mAction:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialingNumber:Ljava/lang/String;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsPendingUSSD:Z

.field private mIsUssdRequest:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field private mPoundString:Ljava/lang/String;

.field private mPwd:Ljava/lang/String;

.field private mSc:Ljava/lang/String;

.field private mSia:Ljava/lang/String;

.field private mSib:Ljava/lang/String;

.field private mSic:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/MmiCode$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-string/jumbo v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    .line 196
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 469
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 185
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 470
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 471
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 472
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 466
    return-void
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "serviceClass"    # I

    .prologue
    .line 1619
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1620
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10400ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1619
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1622
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 1623
    .local v0, "classMask":I
    :goto_0
    const/16 v2, 0x80

    .line 1622
    if-gt v0, v2, :cond_1

    .line 1626
    and-int v2, v0, p1

    if-eqz v2, :cond_0

    .line 1627
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    and-int v2, v0, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1624
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1631
    :cond_1
    return-object v1
.end method

.method private getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1141
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1142
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1144
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1146
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1147
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1148
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1149
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1150
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1151
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1152
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1153
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "76"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1154
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "77"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1156
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1157
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "156"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1158
    const-string/jumbo v0, "Specific Incoming Call Barring"

    return-object v0

    .line 1159
    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "157"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1160
    const-string/jumbo v0, "Anonymous Incoming Call Barring"

    return-object v0

    .line 1164
    :cond_9
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static isScMatchesSuppServType(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    .local v0, "isMatch":Z
    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 330
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 331
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "sc":Ljava/lang/String;
    const-string/jumbo v3, "22"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 333
    const/4 v0, 0x1

    .line 338
    .end local v2    # "sc":Ljava/lang/String;
    :cond_0
    :goto_0
    return v0

    .line 334
    .restart local v2    # "sc":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 335
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 7
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 424
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 425
    .local v2, "resource":Landroid/content/res/Resources;
    if-eqz p0, :cond_1

    .line 427
    const v3, 0x1070041

    .line 426
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "barringMMI":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 429
    array-length v5, v0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    .line 430
    .local v1, "match":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x1

    return v3

    .line 429
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "barringMMI":[Ljava/lang/String;
    .end local v1    # "match":Ljava/lang/String;
    :cond_1
    return v4
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 415
    if-eqz p0, :cond_1

    .line 416
    const-string/jumbo v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const-string/jumbo v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 416
    if-nez v0, :cond_0

    .line 417
    const-string/jumbo v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 416
    if-nez v0, :cond_0

    .line 418
    const-string/jumbo v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 416
    if-nez v0, :cond_0

    .line 418
    const-string/jumbo v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 416
    if-nez v0, :cond_0

    .line 419
    const-string/jumbo v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 415
    :goto_0
    return v0

    .line 416
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 415
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 2
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v1, 0x0

    .line 566
    if-nez p0, :cond_0

    .line 567
    return v1

    .line 574
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 575
    return v1

    .line 578
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    return v1

    .line 581
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v0

    return v0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 601
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v1, :cond_2

    .line 602
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    return v3

    .line 606
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 607
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    .line 608
    :cond_1
    return v3

    .line 611
    :cond_2
    return v2
.end method

.method private static isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 539
    const-string/jumbo v1, "ImsPhoneMmiCode"

    const-string/jumbo v3, "isTwoDigitShortCode"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    :cond_0
    return v2

    .line 543
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 544
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 545
    const v3, 0x1070034

    .line 544
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    .line 548
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    .line 549
    .local v0, "dialnumber":Ljava/lang/String;
    const-string/jumbo v5, "ImsPhoneMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Two Digit Number Pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 551
    const-string/jumbo v1, "ImsPhoneMmiCode"

    const-string/jumbo v2, "Two Digit Number Pattern -true"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v1, 0x1

    return v1

    .line 548
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "dialnumber":Ljava/lang/String;
    :cond_4
    const-string/jumbo v1, "ImsPhoneMmiCode"

    const-string/jumbo v3, "Two Digit Number Pattern -false"

    invoke-static {v1, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    return v2
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "info"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "serviceClassMask"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1258
    new-array v3, v6, [Ljava/lang/String;

    const-string/jumbo v5, "{0}"

    aput-object v5, v3, v8

    const-string/jumbo v5, "{1}"

    aput-object v5, v3, v7

    const-string/jumbo v5, "{2}"

    aput-object v5, v3, v9

    .line 1259
    .local v3, "sources":[Ljava/lang/String;
    new-array v1, v6, [Ljava/lang/CharSequence;

    .line 1266
    .local v1, "destinations":[Ljava/lang/CharSequence;
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, v9, :cond_1

    const/4 v2, 0x1

    .line 1268
    .local v2, "needTimeTemplate":Z
    :goto_0
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_3

    .line 1269
    if-eqz v2, :cond_2

    .line 1270
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1271
    const v6, 0x10400fb

    .line 1270
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1297
    .local v4, "template":Ljava/lang/CharSequence;
    :goto_1
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v8

    .line 1298
    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 1299
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v9

    .line 1301
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v5, :cond_0

    .line 1302
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    if-ne v5, v7, :cond_0

    .line 1304
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v7, :cond_6

    const/4 v0, 0x1

    .line 1305
    .local v0, "cffEnabled":Z
    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v5, :cond_0

    .line 1306
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v7, v0, v6}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1310
    .end local v0    # "cffEnabled":Z
    :cond_0
    invoke-static {v4, v3, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5

    .line 1266
    .end local v2    # "needTimeTemplate":Z
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "needTimeTemplate":Z
    goto :goto_0

    .line 1273
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1274
    const v6, 0x10400fa

    .line 1273
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1276
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_3
    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1277
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1278
    const v6, 0x10400f9

    .line 1277
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1283
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_4
    if-eqz v2, :cond_5

    .line 1284
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1285
    const v6, 0x10400fd

    .line 1284
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1287
    .end local v4    # "template":Ljava/lang/CharSequence;
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1288
    const v6, 0x10400fc

    .line 1287
    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .restart local v4    # "template":Ljava/lang/CharSequence;
    goto :goto_1

    .line 1304
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "cffEnabled":Z
    goto :goto_2
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 322
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 324
    :cond_0
    return-object p0
.end method

.method static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 4
    .param p0, "dialString"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 240
    const/4 v1, 0x0

    .line 242
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    sget-object v2, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 245
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 247
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 248
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    .line 249
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    .line 250
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 251
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    .line 252
    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    .line 253
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    .line 254
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    .line 260
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    const-string/jumbo v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 260
    if-eqz v2, :cond_0

    .line 262
    const-string/jumbo v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    .line 260
    if-eqz v2, :cond_0

    .line 263
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 264
    .restart local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    .line 282
    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_0
    :goto_0
    return-object v1

    .line 266
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_1
    const-string/jumbo v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 272
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_0

    .line 273
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isTwoDigitShortCode(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    const/4 v1, 0x0

    goto :goto_0

    .line 276
    :cond_3
    invoke-static {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    new-instance v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    .end local v1    # "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    invoke-direct {v1, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 279
    .local v1, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    goto :goto_0
.end method

.method static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessge"    # Ljava/lang/String;
    .param p1, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 306
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 308
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 309
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 310
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 312
    return-object v0
.end method

.method static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/imsphone/ImsPhone;)Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    .locals 2
    .param p0, "ussdMessage"    # Ljava/lang/String;
    .param p1, "isUssdRequest"    # Z
    .param p2, "phone"    # Lcom/android/internal/telephony/imsphone/ImsPhone;

    .prologue
    .line 289
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;)V

    .line 291
    .local v0, "ret":Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;
    iput-object p0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 292
    iput-boolean p1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 295
    if-eqz p1, :cond_0

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 297
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 302
    :goto_0
    return-object v0

    .line 299
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0
.end method

.method private onIcbQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v7, 0x10400ac

    .line 1438
    const-string/jumbo v5, "ImsPhoneMmiCode"

    const-string/jumbo v6, "onIcbQueryComplete "

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1440
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1442
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1443
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1445
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/ims/ImsException;

    if-eqz v5, :cond_1

    .line 1446
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1447
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1448
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1475
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1476
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1437
    return-void

    .line 1450
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1453
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1456
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/ims/ImsSsInfo;

    .line 1457
    .local v2, "infos":[Lcom/android/ims/ImsSsInfo;
    array-length v5, v2

    if-nez v5, :cond_4

    .line 1458
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1473
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1460
    :cond_4
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "s":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1461
    aget-object v5, v2, v1

    iget-object v5, v5, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 1462
    const-string/jumbo v5, "Num: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v1

    iget-object v6, v6, Lcom/android/ims/ImsSsInfo;->mIcbNum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1463
    aget-object v6, v2, v1

    iget v6, v6, Lcom/android/ims/ImsSsInfo;->mStatus:I

    .line 1462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1463
    const-string/jumbo v6, "\n"

    .line 1462
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1464
    :cond_5
    aget-object v5, v2, v1

    iget v5, v5, Lcom/android/ims/ImsSsInfo;->mStatus:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 1465
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10400aa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1468
    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 1316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1317
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_2

    .line 1320
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1322
    iget-object v7, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v7, v7, Lcom/android/ims/ImsException;

    if-eqz v7, :cond_1

    .line 1323
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1324
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1325
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1375
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v7, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1315
    return-void

    .line 1327
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1331
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1336
    :cond_2
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1338
    .local v2, "infos":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v7, v2

    if-nez v7, :cond_4

    .line 1340
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v8, 0x10400ac

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1343
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v7, :cond_3

    .line 1344
    iget-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v8, 0x1

    invoke-virtual {v7, v8, v10, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1371
    :cond_3
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v7, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1348
    :cond_4
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1356
    .local v6, "tb":Landroid/text/SpannableStringBuilder;
    const/4 v5, 0x1

    .line 1357
    .local v5, "serviceClassMask":I
    :goto_2
    const/16 v7, 0x80

    .line 1356
    if-gt v5, v7, :cond_7

    .line 1360
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v3, v2

    .local v3, "s":I
    :goto_3
    if-ge v1, v3, :cond_6

    .line 1361
    aget-object v7, v2, v1

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_5

    .line 1362
    aget-object v7, v2, v1

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1364
    const-string/jumbo v7, "\n"

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1360
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1358
    :cond_6
    shl-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1368
    .end local v1    # "i":I
    .end local v3    # "s":I
    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onQueryClirComplete(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v11, 0x10400cd

    const v10, 0x10400ca

    const/4 v9, 0x1

    const v8, 0x10400a7

    const/4 v7, 0x0

    .line 1480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1481
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1484
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 1486
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/ims/ImsException;

    if-eqz v4, :cond_0

    .line 1487
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1488
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1489
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1570
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1479
    return-void

    .line 1491
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1495
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    .line 1496
    .local v3, "ssInfo":Landroid/os/Bundle;
    const-string/jumbo v4, "queryClir"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 1499
    .local v0, "clirInfo":[I
    const-string/jumbo v4, "ImsPhoneMmiCode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "CLIR param n="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v0, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1500
    const-string/jumbo v6, " m="

    .line 1499
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1500
    aget v6, v0, v9

    .line 1499
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    aget v4, v0, v9

    packed-switch v4, :pswitch_data_0

    .line 1563
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1565
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1505
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1506
    const v5, 0x10400ce

    .line 1505
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1507
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1510
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1511
    const v5, 0x10400cf

    .line 1510
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1512
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1516
    :pswitch_3
    aget v4, v0, v7

    packed-switch v4, :pswitch_data_1

    .line 1533
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1535
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1518
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1520
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1523
    :pswitch_5
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1525
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1528
    :pswitch_6
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1529
    const v5, 0x10400cb

    .line 1528
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1530
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1540
    :pswitch_7
    aget v4, v0, v7

    packed-switch v4, :pswitch_data_2

    .line 1557
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1559
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1542
    :pswitch_8
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1544
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1547
    :pswitch_9
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1548
    const v5, 0x10400cc

    .line 1547
    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1549
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1552
    :pswitch_a
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1554
    sget-object v4, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1503
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 1516
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1540
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v7, 0x10400a7

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1576
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1578
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    .line 1579
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1581
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/ims/ImsException;

    if-eqz v3, :cond_1

    .line 1582
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/ims/ImsException;

    .line 1583
    .local v0, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1584
    invoke-virtual {v0}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1614
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1574
    return-void

    .line 1586
    .restart local v0    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1589
    .end local v0    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1593
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 1595
    .local v1, "ints":[I
    array-length v3, v1

    if-eqz v3, :cond_6

    .line 1596
    aget v3, v1, v5

    if-nez v3, :cond_3

    .line 1597
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x10400ac

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1610
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1598
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v4, "43"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1600
    aget v3, v1, v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1601
    :cond_4
    aget v3, v1, v5

    if-ne v3, v6, :cond_5

    .line 1603
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v4, 0x10400aa

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1605
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1608
    :cond_6
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v4, 0x10400ad

    const v5, 0x10400a7

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1170
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    .line 1173
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1175
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    .line 1176
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 1177
    .local v0, "err":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v3, v4, :cond_0

    .line 1178
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1179
    const v4, 0x10400af

    .line 1178
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1220
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1221
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1168
    return-void

    .line 1180
    .restart local v0    # "err":Lcom/android/internal/telephony/CommandException;
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1181
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1183
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1186
    .end local v0    # "err":Lcom/android/internal/telephony/CommandException;
    :cond_2
    iget-object v1, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1187
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1188
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1190
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1193
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1194
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1195
    iget-boolean v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    if-eqz v3, :cond_5

    .line 1196
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1199
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1200
    const v4, 0x10400aa

    .line 1199
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1202
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1203
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1204
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1205
    const v4, 0x10400ac

    .line 1204
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1206
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1207
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1208
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1210
    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1211
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1212
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    .line 1213
    const v4, 0x10400ae

    .line 1212
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1215
    :cond_9
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1216
    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method private onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const v10, 0x10400aa

    const v9, 0x10400a7

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1381
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_2

    .line 1384
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1386
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/ims/ImsException;

    if-eqz v5, :cond_1

    .line 1387
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v1, Lcom/android/ims/ImsException;

    .line 1388
    .local v1, "error":Lcom/android/ims/ImsException;
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1389
    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1433
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :goto_0
    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1434
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1379
    return-void

    .line 1391
    .restart local v1    # "error":Lcom/android/ims/ImsException;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1394
    .end local v1    # "error":Lcom/android/ims/ImsException;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1397
    :cond_2
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1398
    const/4 v3, 0x0

    .line 1399
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v5, v5, Landroid/os/Bundle;

    if-eqz v5, :cond_6

    .line 1400
    const-string/jumbo v5, "ImsPhoneMmiCode"

    const-string/jumbo v6, "Received CLIP/COLP/COLR Response."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/os/Bundle;

    .line 1403
    .local v4, "ssInfoResp":Landroid/os/Bundle;
    const-string/jumbo v5, "imsSsInfo"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .end local v3    # "ssInfo":Lcom/android/ims/ImsSsInfo;
    check-cast v3, Lcom/android/ims/ImsSsInfo;

    .line 1404
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    if-eqz v3, :cond_5

    .line 1405
    const-string/jumbo v5, "ImsPhoneMmiCode"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ImsSsInfo mStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-nez v5, :cond_3

    .line 1407
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10400ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1408
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1409
    :cond_3
    iget v5, v3, Lcom/android/ims/ImsSsInfo;->mStatus:I

    if-ne v5, v8, :cond_4

    .line 1410
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1411
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    .line 1413
    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1416
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1420
    .end local v4    # "ssInfoResp":Landroid/os/Bundle;
    .local v3, "ssInfo":Lcom/android/ims/ImsSsInfo;
    :cond_6
    const-string/jumbo v5, "ImsPhoneMmiCode"

    const-string/jumbo v6, "Received Call Barring Response."

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    .line 1423
    .local v0, "cbInfos":[I
    aget v5, v0, v7

    if-ne v5, v8, :cond_7

    .line 1424
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1425
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0

    .line 1427
    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v6, 0x10400ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1428
    sget-object v5, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v5, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto/16 :goto_0
.end method

.method private processIcbMmiCodeForUpdate()V
    .locals 7

    .prologue
    .line 1116
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 1117
    .local v1, "dialingNumber":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1119
    .local v3, "icbNum":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1120
    const-string/jumbo v4, "\\$"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1122
    .end local v3    # "icbNum":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->callBarAction(Ljava/lang/String;)I

    move-result v0

    .line 1125
    .local v0, "callAction":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v4

    .line 1128
    const/4 v5, 0x0

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1126
    const/16 v6, 0xa

    .line 1125
    invoke-interface {v4, v6, v0, v5, v3}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    return-void

    .line 1130
    :catch_0
    move-exception v2

    .line 1131
    .local v2, "e":Lcom/android/ims/ImsException;
    const-string/jumbo v4, "ImsPhoneMmiCode"

    const-string/jumbo v5, "Could not get UT handle for updating ICB."

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 439
    if-nez p0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    const-string/jumbo v0, "33"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 444
    const-string/jumbo v0, "AO"

    return-object v0

    .line 445
    :cond_1
    const-string/jumbo v0, "331"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 446
    const-string/jumbo v0, "OI"

    return-object v0

    .line 447
    :cond_2
    const-string/jumbo v0, "332"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 448
    const-string/jumbo v0, "OX"

    return-object v0

    .line 449
    :cond_3
    const-string/jumbo v0, "35"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 450
    const-string/jumbo v0, "AI"

    return-object v0

    .line 451
    :cond_4
    const-string/jumbo v0, "351"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 452
    const-string/jumbo v0, "IR"

    return-object v0

    .line 453
    :cond_5
    const-string/jumbo v0, "330"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 454
    const-string/jumbo v0, "AB"

    return-object v0

    .line 455
    :cond_6
    const-string/jumbo v0, "333"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 456
    const-string/jumbo v0, "AG"

    return-object v0

    .line 457
    :cond_7
    const-string/jumbo v0, "353"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 458
    const-string/jumbo v0, "AC"

    return-object v0

    .line 460
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid call barring sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2
    .param p0, "sc"    # Ljava/lang/String;

    .prologue
    .line 349
    if-nez p0, :cond_0

    .line 350
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 353
    :cond_0
    const-string/jumbo v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    const/4 v0, 0x4

    return v0

    .line 355
    :cond_1
    const-string/jumbo v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 356
    const/4 v0, 0x0

    return v0

    .line 357
    :cond_2
    const-string/jumbo v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    const/4 v0, 0x1

    return v0

    .line 359
    :cond_3
    const-string/jumbo v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 360
    const/4 v0, 0x3

    return v0

    .line 361
    :cond_4
    const-string/jumbo v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    const/4 v0, 0x2

    return v0

    .line 363
    :cond_5
    const-string/jumbo v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 364
    const/4 v0, 0x5

    return v0

    .line 366
    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid call forward sc"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "serviceClass"    # I

    .prologue
    .line 1232
    sparse-switch p1, :sswitch_data_0

    .line 1250
    const/4 v0, 0x0

    return-object v0

    .line 1234
    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1236
    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400df

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1238
    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1240
    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1242
    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400e3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1244
    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400e2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1246
    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400e4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1248
    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1232
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 372
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 373
    :cond_0
    return v2

    .line 376
    :cond_1
    const/16 v1, 0xa

    invoke-static {p0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 378
    .local v0, "serviceCode":I
    sparse-switch v0, :sswitch_data_0

    .line 398
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 379
    :sswitch_0
    const/16 v1, 0xd

    return v1

    .line 380
    :sswitch_1
    const/4 v1, 0x1

    return v1

    .line 381
    :sswitch_2
    const/16 v1, 0xc

    return v1

    .line 382
    :sswitch_3
    const/4 v1, 0x4

    return v1

    .line 384
    :sswitch_4
    const/16 v1, 0x8

    return v1

    .line 386
    :sswitch_5
    const/4 v1, 0x5

    return v1

    .line 388
    :sswitch_6
    const/16 v1, 0x30

    return v1

    .line 390
    :sswitch_7
    const/16 v1, 0xa0

    return v1

    .line 391
    :sswitch_8
    const/16 v1, 0x50

    return v1

    .line 392
    :sswitch_9
    const/16 v1, 0x10

    return v1

    .line 393
    :sswitch_a
    const/16 v1, 0x20

    return v1

    .line 394
    :sswitch_b
    const/16 v1, 0x11

    return v1

    .line 395
    :sswitch_c
    const/16 v1, 0x40

    return v1

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xb -> :sswitch_1
        0xc -> :sswitch_2
        0xd -> :sswitch_3
        0x10 -> :sswitch_4
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x18 -> :sswitch_9
        0x19 -> :sswitch_a
        0x1a -> :sswitch_b
        0x63 -> :sswitch_c
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 2
    .param p0, "si"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 405
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 406
    :cond_0
    return v1

    .line 409
    :cond_1
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public callBarAction(Ljava/lang/String;)I
    .locals 2
    .param p1, "dialingNumber"    # Ljava/lang/String;

    .prologue
    .line 725
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    const/4 v0, 0x1

    return v0

    .line 727
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    const/4 v0, 0x0

    return v0

    .line 729
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    invoke-static {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 731
    const/4 v0, 0x3

    return v0

    .line 733
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 735
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 736
    const/4 v0, 0x4

    return v0

    .line 738
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "invalid action"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 498
    :cond_0
    return-void

    .line 501
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 503
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->cancelUSSD()V

    .line 495
    :goto_0
    return-void

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0
.end method

.method getCLIRMode()I
    .locals 2

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 643
    const/4 v0, 0x2

    return v0

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    const/4 v0, 0x1

    return v0

    .line 649
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getDialingNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 1037
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1034
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1039
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1041
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1045
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1051
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_1

    .line 1052
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v4, :cond_2

    const/4 v1, 0x1

    .line 1053
    .local v1, "cffEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_1

    .line 1054
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1058
    .end local v1    # "cffEnabled":Z
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1052
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "cffEnabled":Z
    goto :goto_1

    .line 1062
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "cffEnabled":Z
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1063
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1067
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1068
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1072
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1074
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 1075
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1076
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1078
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0

    .line 1089
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    goto :goto_0

    .line 1093
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1094
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onSuppSvcQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1098
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1099
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onIcbQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1103
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1104
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->onQueryClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 514
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isErasure()Z
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInterrogate()Z
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isMMI()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPendingUSSD()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method public isPinPukCommand()Z
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 618
    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 618
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRegister()Z
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    const-string/jumbo v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShortCode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 532
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 532
    :cond_0
    return v0
.end method

.method isSupportedOverImsPhone()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    .line 688
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    return v5

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 690
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v2

    .line 689
    if-nez v2, :cond_8

    .line 691
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 689
    if-nez v2, :cond_8

    .line 692
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 689
    if-nez v2, :cond_8

    .line 693
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 689
    if-nez v2, :cond_8

    .line 694
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "77"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 689
    if-nez v2, :cond_8

    .line 695
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "76"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 689
    if-nez v2, :cond_8

    .line 696
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "156"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 689
    if-nez v2, :cond_8

    .line 697
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "157"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 689
    if-eqz v2, :cond_b

    .line 700
    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 701
    .local v1, "serviceClass":I
    if-eqz v1, :cond_9

    .line 702
    if-eq v1, v4, :cond_9

    .line 703
    return v5

    .line 705
    :cond_9
    return v4

    .line 706
    .end local v1    # "serviceClass":I
    :catch_0
    move-exception v0

    .line 707
    .local v0, "exc":Ljava/lang/RuntimeException;
    const-string/jumbo v2, "ImsPhoneMmiCode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid service class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    .end local v0    # "exc":Ljava/lang/RuntimeException;
    :cond_a
    return v5

    .line 709
    :cond_b
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isPinPukCommand()Z

    move-result v2

    if-nez v2, :cond_c

    .line 710
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "03"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 709
    if-eqz v2, :cond_d

    .line 712
    :cond_c
    return v5

    .line 713
    :cond_d
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v2, :cond_a

    return v4
.end method

.method isTemporaryModeCLIR()Z
    .locals 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v0

    .line 631
    :goto_0
    return v0

    .line 632
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 631
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUssdRequest()Z
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    return v0
.end method

.method onUssdFinished(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;
    .param p2, "isUssdRequest"    # Z

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    .line 987
    if-nez p1, :cond_2

    .line 988
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400b0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 992
    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsUssdRequest:Z

    .line 994
    if-nez p2, :cond_0

    .line 995
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 985
    :cond_1
    return-void

    .line 990
    :cond_2
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method onUssdFinishedError()V
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    .line 1011
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400a7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 1009
    :cond_0
    return-void
.end method

.method public processCode()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 746
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isShortCode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 747
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "isShortCode"

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string/jumbo v3, "ImsPhoneMmiCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Sending short code \'"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 750
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 751
    const-string/jumbo v17, "\' over CS pipe."

    .line 750
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v9, "cs_fallback"

    invoke-direct {v3, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :catch_0
    move-exception v12

    .line 969
    .local v12, "exc":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    .line 970
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x10400a7

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mMessage:Ljava/lang/CharSequence;

    .line 971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->onMMIDone(Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;)V

    .line 744
    .end local v12    # "exc":Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 753
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 754
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "is CF"

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    .line 757
    .local v6, "dialingNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v5

    .line 758
    .local v5, "reason":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 759
    .local v7, "serviceClass":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v8

    .line 761
    .local v8, "time":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 763
    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 762
    invoke-virtual {v3, v5, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0

    .line 767
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 772
    invoke-static {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 773
    const/4 v4, 0x1

    .line 774
    .local v4, "cfAction":I
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    .line 790
    :goto_1
    if-eqz v5, :cond_2

    .line 791
    const/4 v3, 0x4

    if-ne v5, v3, :cond_9

    :cond_2
    const/4 v15, 0x1

    .line 794
    .local v15, "isSettingUnconditional":I
    :goto_2
    const/4 v3, 0x1

    if-eq v4, v3, :cond_3

    .line 795
    const/4 v3, 0x3

    if-ne v4, v3, :cond_a

    :cond_3
    const/4 v14, 0x1

    .line 797
    .local v14, "isEnableDesired":I
    :goto_3
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "is CF setCallForward"

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 800
    const/4 v9, 0x4

    .line 799
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v15, v14, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 798
    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V

    goto :goto_0

    .line 776
    .end local v4    # "cfAction":I
    .end local v14    # "isEnableDesired":I
    .end local v15    # "isSettingUnconditional":I
    :cond_4
    const/4 v4, 0x3

    .line 777
    .restart local v4    # "cfAction":I
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsCallFwdReg:Z

    goto :goto_1

    .line 779
    .end local v4    # "cfAction":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 780
    const/4 v4, 0x0

    .restart local v4    # "cfAction":I
    goto :goto_1

    .line 781
    .end local v4    # "cfAction":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isRegister()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 782
    const/4 v4, 0x3

    .restart local v4    # "cfAction":I
    goto :goto_1

    .line 783
    .end local v4    # "cfAction":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isErasure()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 784
    const/4 v4, 0x4

    .restart local v4    # "cfAction":I
    goto :goto_1

    .line 786
    .end local v4    # "cfAction":I
    :cond_8
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "invalid action"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 791
    .restart local v4    # "cfAction":I
    :cond_9
    const/4 v15, 0x0

    .restart local v15    # "isSettingUnconditional":I
    goto :goto_2

    .line 795
    :cond_a
    const/4 v14, 0x0

    .restart local v14    # "isEnableDesired":I
    goto :goto_3

    .line 804
    .end local v4    # "cfAction":I
    .end local v5    # "reason":I
    .end local v6    # "dialingNumber":Ljava/lang/String;
    .end local v7    # "serviceClass":I
    .end local v8    # "time":I
    .end local v14    # "isEnableDesired":I
    .end local v15    # "isSettingUnconditional":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 810
    .local v16, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 812
    .local v13, "facility":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 814
    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 813
    invoke-virtual {v3, v13, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 815
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 816
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    .line 817
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 816
    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v13, v9, v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 819
    :cond_e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 821
    .end local v13    # "facility":Ljava/lang/String;
    .end local v16    # "password":Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v9, "31"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 825
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_10

    .line 827
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 828
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 827
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_2
    .catch Lcom/android/ims/ImsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 829
    :catch_1
    move-exception v11

    .line 830
    .local v11, "e":Lcom/android/ims/ImsException;
    :try_start_3
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for updateCLIR."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 832
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    if-eqz v3, :cond_11

    .line 834
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 835
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 834
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCLIR(ILandroid/os/Message;)V
    :try_end_4
    .catch Lcom/android/ims/ImsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 836
    :catch_2
    move-exception v11

    .line 837
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_5
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for updateCLIR."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 839
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v3

    if-eqz v3, :cond_12

    .line 841
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 842
    const/4 v9, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 841
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIR(Landroid/os/Message;)V
    :try_end_6
    .catch Lcom/android/ims/ImsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 843
    :catch_3
    move-exception v11

    .line 844
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_7
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for queryCLIR."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 847
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_12
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 849
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v9, "30"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 851
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    move-result v3

    if-eqz v3, :cond_14

    .line 853
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 854
    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 853
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCLIP(Landroid/os/Message;)V
    :try_end_8
    .catch Lcom/android/ims/ImsException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 855
    :catch_4
    move-exception v11

    .line 856
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_9
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for queryCLIP."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 858
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    move-result v3

    if-eqz v3, :cond_16

    .line 860
    :cond_15
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    .line 861
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 860
    move-object/from16 v0, v17

    invoke-interface {v3, v9, v0}, Lcom/android/ims/ImsUtInterface;->updateCLIP(ZLandroid/os/Message;)V
    :try_end_a
    .catch Lcom/android/ims/ImsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_0

    .line 862
    :catch_5
    move-exception v11

    .line 863
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_b
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for updateCLIP."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 866
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_16
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 868
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_1b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v9, "76"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_0

    move-result v3

    if-eqz v3, :cond_18

    .line 872
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 873
    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 872
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLP(Landroid/os/Message;)V
    :try_end_c
    .catch Lcom/android/ims/ImsException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_0

    .line 874
    :catch_6
    move-exception v11

    .line 875
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_d
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for queryCOLP."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 877
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_0

    move-result v3

    if-eqz v3, :cond_1a

    .line 879
    :cond_19
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    .line 880
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 879
    move-object/from16 v0, v17

    invoke-interface {v3, v9, v0}, Lcom/android/ims/ImsUtInterface;->updateCOLP(ZLandroid/os/Message;)V
    :try_end_e
    .catch Lcom/android/ims/ImsException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    .line 881
    :catch_7
    move-exception v11

    .line 882
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_f
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for updateCOLP."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 885
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 887
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v9, "77"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 889
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    move-result v3

    if-eqz v3, :cond_1c

    .line 891
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 892
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 891
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_10
    .catch Lcom/android/ims/ImsException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_0

    .line 893
    :catch_8
    move-exception v11

    .line 894
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_11
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for updateCOLR."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 896
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0

    move-result v3

    if-eqz v3, :cond_1d

    .line 898
    :try_start_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 899
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 898
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->updateCOLR(ILandroid/os/Message;)V
    :try_end_12
    .catch Lcom/android/ims/ImsException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_0

    goto/16 :goto_0

    .line 900
    :catch_9
    move-exception v11

    .line 901
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_13
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for updateCOLR."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 903
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0

    move-result v3

    if-eqz v3, :cond_1e

    .line 905
    :try_start_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 906
    const/4 v9, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 905
    invoke-interface {v3, v9}, Lcom/android/ims/ImsUtInterface;->queryCOLR(Landroid/os/Message;)V
    :try_end_14
    .catch Lcom/android/ims/ImsException; {:try_start_14 .. :try_end_14} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 907
    :catch_a
    move-exception v11

    .line 908
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_15
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for queryCOLR."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 911
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_1e
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 913
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v9, "156"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_0

    move-result v3

    if-eqz v3, :cond_21

    .line 915
    :try_start_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 916
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 918
    const/16 v9, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 917
    const/16 v17, 0xa

    .line 916
    move/from16 v0, v17

    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_16
    .catch Lcom/android/ims/ImsException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_0

    goto/16 :goto_0

    .line 923
    :catch_b
    move-exception v11

    .line 924
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_17
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for ICB."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_0

    .line 920
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_20
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->processIcbMmiCodeForUpdate()V
    :try_end_18
    .catch Lcom/android/ims/ImsException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_0

    goto/16 :goto_0

    .line 926
    :cond_21
    :try_start_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v9, "157"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_0

    move-result v3

    if-eqz v3, :cond_25

    .line 927
    const/4 v10, 0x0

    .line 930
    .local v10, "callAction":I
    :try_start_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 933
    const/16 v9, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 932
    const/16 v17, 0x6

    .line 931
    move/from16 v0, v17

    invoke-interface {v3, v0, v9}, Lcom/android/ims/ImsUtInterface;->queryCallBarring(ILandroid/os/Message;)V
    :try_end_1a
    .catch Lcom/android/ims/ImsException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_0

    goto/16 :goto_0

    .line 946
    :catch_c
    move-exception v11

    .line 947
    .restart local v11    # "e":Lcom/android/ims/ImsException;
    :try_start_1b
    const-string/jumbo v3, "ImsPhoneMmiCode"

    const-string/jumbo v9, "Could not get UT handle for ICBa."

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_0

    goto/16 :goto_0

    .line 935
    .end local v11    # "e":Lcom/android/ims/ImsException;
    :cond_22
    :try_start_1c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 936
    const/4 v10, 0x1

    .line 940
    :cond_23
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/imsphone/ImsPhone;->mCT:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getUtInterface()Lcom/android/ims/ImsUtInterface;

    move-result-object v3

    .line 943
    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 941
    const/16 v17, 0x6

    .line 944
    const/16 v18, 0x0

    .line 940
    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v3, v0, v10, v9, v1}, Lcom/android/ims/ImsUtInterface;->updateCallBarring(IILandroid/os/Message;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 937
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z
    :try_end_1c
    .catch Lcom/android/ims/ImsException; {:try_start_1c .. :try_end_1c} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_0

    move-result v3

    if-eqz v3, :cond_23

    .line 938
    const/4 v10, 0x0

    goto :goto_4

    .line 949
    .end local v10    # "callAction":I
    :cond_25
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v3, :cond_29

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    const-string/jumbo v9, "43"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 951
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v7

    .line 953
    .restart local v7    # "serviceClass":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 954
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isActivate()Z

    move-result v9

    .line 955
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .line 954
    move-object/from16 v0, v17

    invoke-virtual {v3, v9, v7, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 956
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v9, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v9, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 959
    :cond_28
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 961
    .end local v7    # "serviceClass":I
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 962
    const-string/jumbo v3, "ImsPhoneMmiCode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Sending pound string \'"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 962
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 963
    const-string/jumbo v17, "\' over CS pipe."

    .line 962
    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v3, Lcom/android/internal/telephony/CallStateException;

    const-string/jumbo v9, "cs_fallback"

    invoke-direct {v3, v9}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 966
    :cond_2a
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Invalid or Unsupported MMI Code"

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_0
.end method

.method sendUssd(Ljava/lang/String;)V
    .locals 2
    .param p1, "ussdMessage"    # Ljava/lang/String;

    .prologue
    .line 1020
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mIsPendingUSSD:Z

    .line 1027
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    .line 1028
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1027
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    .line 1018
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1643
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ImsPhoneMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1645
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "State="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1646
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, " action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1647
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string/jumbo v1, " sc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1648
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, " sia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSia:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1649
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string/jumbo v1, " sib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1650
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, " sic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_5

    const-string/jumbo v1, " poundString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1652
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, " dialingNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string/jumbo v1, " pwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    :cond_7
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

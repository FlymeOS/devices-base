.class public final enum Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
.super Ljava/lang/Enum;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataAllowFailReasonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

.field public static final enum UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;


# instance fields
.field public mFailReasonStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "NOT_ATTACHED"

    const-string/jumbo v2, " - Not attached"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 197
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "RECORD_NOT_LOADED"

    const-string/jumbo v2, " - SIM not loaded"

    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 198
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "ROAMING_DISABLED"

    const-string/jumbo v2, " - Roaming and data roaming not enabled"

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 199
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "INVALID_PHONE_STATE"

    const-string/jumbo v2, " - PhoneState is not idle"

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 200
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "CONCURRENT_VOICE_DATA_NOT_ALLOWED"

    const-string/jumbo v2, " - Concurrent voice and data not allowed"

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 201
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "PS_RESTRICTED"

    const-string/jumbo v2, " - mIsPsRestricted= true"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 202
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "UNDESIRED_POWER_STATE"

    const-string/jumbo v2, " - desiredPowerState= false"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 203
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "INTERNAL_DATA_DISABLED"

    const-string/jumbo v2, " - mInternalDataEnabled= false"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 204
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "DEFAULT_DATA_UNSELECTED"

    const-string/jumbo v2, " - defaultDataSelected= false"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 205
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const-string/jumbo v1, "RADIO_DISABLED_BY_CARRIER"

    const-string/jumbo v2, " - powerStateFromCarrier= false"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    .line 195
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->NOT_ATTACHED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RECORD_NOT_LOADED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->ROAMING_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INVALID_PHONE_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->CONCURRENT_VOICE_DATA_NOT_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->PS_RESTRICTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->UNDESIRED_POWER_STATE:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->INTERNAL_DATA_DISABLED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->DEFAULT_DATA_UNSELECTED:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->RADIO_DISABLED_BY_CARRIER:Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 210
    iput-object p3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->mFailReasonStr:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$DataAllowFailReasonType;

    return-object v0
.end method

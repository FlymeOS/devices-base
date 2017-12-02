.class final enum Landroid/net/apf/ApfFilter$ProcessRaResult;
.super Ljava/lang/Enum;
.source "ApfFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProcessRaResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/apf/ApfFilter$ProcessRaResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

.field public static final enum ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    const-string/jumbo v1, "MATCH"

    invoke-direct {v0, v1, v3}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    const-string/jumbo v1, "DROPPED"

    invoke-direct {v0, v1, v4}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    .line 84
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    const-string/jumbo v1, "PARSE_ERROR"

    invoke-direct {v0, v1, v5}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    const-string/jumbo v1, "ZERO_LIFETIME"

    invoke-direct {v0, v1, v6}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    .line 86
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;

    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    const-string/jumbo v1, "UPDATE_NEW_RA"

    invoke-direct {v0, v1, v7}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    .line 87
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

    new-instance v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    const-string/jumbo v1, "UPDATE_EXPIRY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/apf/ApfFilter$ProcessRaResult;-><init>(Ljava/lang/String;I)V

    .line 88
    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

    .line 82
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/net/apf/ApfFilter$ProcessRaResult;

    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->MATCH:Landroid/net/apf/ApfFilter$ProcessRaResult;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->DROPPED:Landroid/net/apf/ApfFilter$ProcessRaResult;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->PARSE_ERROR:Landroid/net/apf/ApfFilter$ProcessRaResult;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->ZERO_LIFETIME:Landroid/net/apf/ApfFilter$ProcessRaResult;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_NEW_RA:Landroid/net/apf/ApfFilter$ProcessRaResult;

    aput-object v1, v0, v7

    sget-object v1, Landroid/net/apf/ApfFilter$ProcessRaResult;->UPDATE_EXPIRY:Landroid/net/apf/ApfFilter$ProcessRaResult;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->$VALUES:[Landroid/net/apf/ApfFilter$ProcessRaResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfFilter$ProcessRaResult;

    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfFilter$ProcessRaResult;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Landroid/net/apf/ApfFilter$ProcessRaResult;->$VALUES:[Landroid/net/apf/ApfFilter$ProcessRaResult;

    return-object v0
.end method

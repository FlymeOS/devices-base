.class public final enum Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;
.super Ljava/lang/Enum;
.source "UpdateInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/pps/UpdateInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateRestriction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

.field public static final enum HomeSP:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

.field public static final enum RoamingPartner:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

.field public static final enum Unrestricted:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    const-string/jumbo v1, "HomeSP"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->HomeSP:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    const-string/jumbo v1, "RoamingPartner"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->RoamingPartner:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    new-instance v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    const-string/jumbo v1, "Unrestricted"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->Unrestricted:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->HomeSP:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->RoamingPartner:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->Unrestricted:Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->$VALUES:[Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;->$VALUES:[Lcom/android/server/wifi/hotspot2/pps/UpdateInfo$UpdateRestriction;

    return-object v0
.end method

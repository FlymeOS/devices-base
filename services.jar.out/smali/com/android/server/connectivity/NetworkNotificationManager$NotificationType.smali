.class public final enum Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
.super Ljava/lang/Enum;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

.field public static final enum SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;


# instance fields
.field public final eventId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string/jumbo v1, "LOST_INTERNET"

    const/16 v2, 0x2e6

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 44
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string/jumbo v1, "NETWORK_SWITCH"

    const/16 v2, 0x2e7

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 45
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string/jumbo v1, "NO_INTERNET"

    const/16 v2, 0x2e5

    invoke-direct {v0, v1, v5, v2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 46
    new-instance v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const-string/jumbo v1, "SIGN_IN"

    const/16 v2, 0x2e4

    invoke-direct {v0, v1, v6, v2}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->$VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "eventId"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->eventId:I

    .line 52
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->-get0()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public static getFromId(I)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 60
    invoke-static {}, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->-get0()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->$VALUES:[Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    return-object v0
.end method

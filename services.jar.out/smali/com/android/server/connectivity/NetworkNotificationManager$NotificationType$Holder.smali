.class Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;
.super Ljava/lang/Object;
.source "NetworkNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static sIdToTypeMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Landroid/util/SparseArray;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->sIdToTypeMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType$Holder;->sIdToTypeMap:Landroid/util/SparseArray;

    .line 55
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

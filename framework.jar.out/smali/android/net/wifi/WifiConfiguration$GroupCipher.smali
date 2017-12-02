.class public Landroid/net/wifi/WifiConfiguration$GroupCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCipher"
.end annotation


# static fields
.field public static final CCMP:I = 0x3

.field public static final GTK_NOT_USED:I = 0x4

.field public static final TKIP:I = 0x2

.field public static final WEP104:I = 0x1

.field public static final WEP40:I = 0x0

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "group"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 203
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "WEP40"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "WEP104"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "TKIP"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "CCMP"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "GTK_NOT_USED"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 202
    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    .line 184
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

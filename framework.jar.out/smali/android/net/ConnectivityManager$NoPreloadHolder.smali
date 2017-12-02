.class Landroid/net/ConnectivityManager$NoPreloadHolder;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoPreloadHolder"
.end annotation


# static fields
.field public static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3482
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Landroid/net/ConnectivityManager;

    aput-object v1, v0, v3

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "CALLBACK_"

    aput-object v2, v1, v3

    .line 3481
    invoke-static {v0, v1}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;[Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Landroid/net/ConnectivityManager$NoPreloadHolder;->sMagicDecoderRing:Landroid/util/SparseArray;

    .line 3480
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

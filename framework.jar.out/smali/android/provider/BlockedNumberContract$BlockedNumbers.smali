.class public Landroid/provider/BlockedNumberContract$BlockedNumbers;
.super Ljava/lang/Object;
.source "BlockedNumberContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BlockedNumberContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedNumbers"
.end annotation


# static fields
.field public static final COLUMN_E164_NUMBER:Ljava/lang/String; = "e164_number"

.field public static final COLUMN_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_ORIGINAL_NUMBER:Ljava/lang/String; = "original_number"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/blocked_number"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/blocked_number"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 176
    sget-object v0, Landroid/provider/BlockedNumberContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "blocked"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BlockedNumberContract$BlockedNumbers;->CONTENT_URI:Landroid/net/Uri;

    .line 157
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

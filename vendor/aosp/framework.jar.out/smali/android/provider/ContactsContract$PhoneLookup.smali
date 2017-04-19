.class public final Landroid/provider/ContactsContract$PhoneLookup;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$PhoneLookupColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PhoneLookup"
.end annotation


# static fields
.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/phone_lookup"

.field public static final ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final QUERY_PARAMETER_SIP_ADDRESS:Ljava/lang/String; = "sip"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 5051
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 5052
    const-string/jumbo v1, "phone_lookup"

    .line 5051
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 5096
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    .line 5097
    const-string/jumbo v1, "phone_lookup_enterprise"

    .line 5096
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 5036
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

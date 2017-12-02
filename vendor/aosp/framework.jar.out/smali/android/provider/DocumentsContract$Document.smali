.class public final Landroid/provider/DocumentsContract$Document;
.super Ljava/lang/Object;
.source "DocumentsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/DocumentsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Document"
.end annotation


# static fields
.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "_display_name"

.field public static final COLUMN_DOCUMENT_ID:Ljava/lang/String; = "document_id"

.field public static final COLUMN_FLAGS:Ljava/lang/String; = "flags"

.field public static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final COLUMN_LAST_MODIFIED:Ljava/lang/String; = "last_modified"

.field public static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final COLUMN_SIZE:Ljava/lang/String; = "_size"

.field public static final COLUMN_SUMMARY:Ljava/lang/String; = "summary"

.field public static final FLAG_ARCHIVE:I = 0x8000

.field public static final FLAG_DIR_PREFERS_GRID:I = 0x10

.field public static final FLAG_DIR_PREFERS_LAST_MODIFIED:I = 0x20

.field public static final FLAG_DIR_SUPPORTS_CREATE:I = 0x8

.field public static final FLAG_PARTIAL:I = 0x10000

.field public static final FLAG_SUPPORTS_COPY:I = 0x80

.field public static final FLAG_SUPPORTS_DELETE:I = 0x4

.field public static final FLAG_SUPPORTS_MOVE:I = 0x100

.field public static final FLAG_SUPPORTS_REMOVE:I = 0x400

.field public static final FLAG_SUPPORTS_RENAME:I = 0x40

.field public static final FLAG_SUPPORTS_THUMBNAIL:I = 0x1

.field public static final FLAG_SUPPORTS_WRITE:I = 0x2

.field public static final FLAG_VIRTUAL_DOCUMENT:I = 0x200

.field public static final MIME_TYPE_DIR:Ljava/lang/String; = "vnd.android.document/directory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

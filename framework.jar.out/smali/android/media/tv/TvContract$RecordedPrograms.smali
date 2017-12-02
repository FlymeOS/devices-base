.class public final Landroid/media/tv/TvContract$RecordedPrograms;
.super Ljava/lang/Object;
.source "TvContract.java"

# interfaces
.implements Landroid/media/tv/TvContract$BaseTvColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecordedPrograms"
.end annotation


# static fields
.field public static final COLUMN_AUDIO_LANGUAGE:Ljava/lang/String; = "audio_language"

.field public static final COLUMN_BROADCAST_GENRE:Ljava/lang/String; = "broadcast_genre"

.field public static final COLUMN_CANONICAL_GENRE:Ljava/lang/String; = "canonical_genre"

.field public static final COLUMN_CHANNEL_ID:Ljava/lang/String; = "channel_id"

.field public static final COLUMN_CONTENT_RATING:Ljava/lang/String; = "content_rating"

.field public static final COLUMN_END_TIME_UTC_MILLIS:Ljava/lang/String; = "end_time_utc_millis"

.field public static final COLUMN_EPISODE_DISPLAY_NUMBER:Ljava/lang/String; = "episode_display_number"

.field public static final COLUMN_EPISODE_TITLE:Ljava/lang/String; = "episode_title"

.field public static final COLUMN_INPUT_ID:Ljava/lang/String; = "input_id"

.field public static final COLUMN_INTERNAL_PROVIDER_DATA:Ljava/lang/String; = "internal_provider_data"

.field public static final COLUMN_INTERNAL_PROVIDER_FLAG1:Ljava/lang/String; = "internal_provider_flag1"

.field public static final COLUMN_INTERNAL_PROVIDER_FLAG2:Ljava/lang/String; = "internal_provider_flag2"

.field public static final COLUMN_INTERNAL_PROVIDER_FLAG3:Ljava/lang/String; = "internal_provider_flag3"

.field public static final COLUMN_INTERNAL_PROVIDER_FLAG4:Ljava/lang/String; = "internal_provider_flag4"

.field public static final COLUMN_LONG_DESCRIPTION:Ljava/lang/String; = "long_description"

.field public static final COLUMN_POSTER_ART_URI:Ljava/lang/String; = "poster_art_uri"

.field public static final COLUMN_RECORDING_DATA_BYTES:Ljava/lang/String; = "recording_data_bytes"

.field public static final COLUMN_RECORDING_DATA_URI:Ljava/lang/String; = "recording_data_uri"

.field public static final COLUMN_RECORDING_DURATION_MILLIS:Ljava/lang/String; = "recording_duration_millis"

.field public static final COLUMN_RECORDING_EXPIRE_TIME_UTC_MILLIS:Ljava/lang/String; = "recording_expire_time_utc_millis"

.field public static final COLUMN_SEARCHABLE:Ljava/lang/String; = "searchable"

.field public static final COLUMN_SEASON_DISPLAY_NUMBER:Ljava/lang/String; = "season_display_number"

.field public static final COLUMN_SEASON_TITLE:Ljava/lang/String; = "season_title"

.field public static final COLUMN_SHORT_DESCRIPTION:Ljava/lang/String; = "short_description"

.field public static final COLUMN_START_TIME_UTC_MILLIS:Ljava/lang/String; = "start_time_utc_millis"

.field public static final COLUMN_THUMBNAIL_URI:Ljava/lang/String; = "thumbnail_uri"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_VERSION_NUMBER:Ljava/lang/String; = "version_number"

.field public static final COLUMN_VIDEO_HEIGHT:Ljava/lang/String; = "video_height"

.field public static final COLUMN_VIDEO_WIDTH:Ljava/lang/String; = "video_width"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/recorded_program"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/recorded_program"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1606
    const-string/jumbo v0, "content://android.media.tv/recorded_program"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/media/tv/TvContract$RecordedPrograms;->CONTENT_URI:Landroid/net/Uri;

    .line 1603
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$1;,
        Landroid/media/RemoteControlClient$MetadataEditor;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x0

.field public static MEDIA_POSITION_WRITABLE:I = 0x0

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCurrentClientGenId:I

.field private mMediaMetadata:Landroid/media/MediaMetadata;

.field private mMetadata:Landroid/os/Bundle;

.field private mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mSession:Landroid/media/session/MediaSession;

.field private mSessionPlaybackState:Landroid/media/session/PlaybackState;

.field private mTransportControlFlags:I

.field private mTransportListener:Landroid/media/session/MediaSession$Callback;


# direct methods
.method static synthetic -get0(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/RemoteControlClient;)I
    .locals 1

    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    return v0
.end method

.method static synthetic -get2(Landroid/media/RemoteControlClient;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get3(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic -get4(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get5(Landroid/media/RemoteControlClient;)Landroid/media/session/MediaSession;
    .locals 1

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method static synthetic -get6(Landroid/media/RemoteControlClient;)I
    .locals 1

    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    return v0
.end method

.method static synthetic -set0(Landroid/media/RemoteControlClient;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -set1(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic -set2(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -wrap0(Landroid/media/RemoteControlClient;IJ)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .locals 0
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x1

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    .line 830
    const/4 v0, 0x2

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v2, 0x0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 846
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 851
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 855
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 859
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 872
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 878
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 896
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 909
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 936
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    .line 351
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 3
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 846
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 851
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 855
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 859
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 872
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 878
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 896
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 909
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 914
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 936
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    .line 370
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 369
    return-void
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .locals 4
    .param p0, "speed"    # F

    .prologue
    .line 1018
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1019
    const-wide/16 v0, 0x3a98

    return-wide v0

    .line 1021
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x466a6000    # 15000.0f

    div-float v0, v1, v0

    float-to-long v0, v0

    .line 1022
    const-wide/16 v2, 0x7d0

    .line 1021
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private onSeekTo(IJ)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 955
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 954
    return-void

    .line 955
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private onUpdateMetadata(IILjava/lang/Object;)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 963
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    if-eqz v0, :cond_0

    .line 965
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 962
    return-void

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static playbackPositionShouldMove(I)Z
    .locals 1
    .param p0, "playstate"    # I

    .prologue
    .line 981
    packed-switch p0, :pswitch_data_0

    .line 993
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 988
    :pswitch_1
    const/4 v0, 0x0

    return v0

    .line 981
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private setPlaybackStateInt(IJFZ)V
    .locals 8
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "hasPosition"    # Z

    .prologue
    .line 661
    iget-object v7, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v7

    .line 662
    :try_start_0
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v4, p1, :cond_0

    iget-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v4, v4, p2

    if-eqz v4, :cond_2

    .line 665
    :cond_0
    :goto_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 669
    if-eqz p5, :cond_4

    .line 670
    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-gez v4, :cond_3

    .line 671
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 678
    :goto_1
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 680
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 683
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v4, :cond_1

    .line 684
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getStateFromRccState(I)I

    move-result v1

    .line 685
    .local v1, "pbState":I
    if-eqz p5, :cond_5

    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 688
    .local v2, "position":J
    :goto_2
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v0, v4}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 689
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJFJ)Landroid/media/session/PlaybackState$Builder;

    .line 690
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/media/session/PlaybackState$Builder;->setErrorMessage(Ljava/lang/CharSequence;)Landroid/media/session/PlaybackState$Builder;

    .line 691
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v4

    iput-object v4, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 692
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v4, v5}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bob":Landroid/media/session/PlaybackState$Builder;
    .end local v1    # "pbState":I
    .end local v2    # "position":J
    :cond_1
    monitor-exit v7

    .line 660
    return-void

    .line 663
    :cond_2
    :try_start_1
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v4, v4, p4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 673
    :cond_3
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 661
    :catchall_0
    move-exception v4

    monitor-exit v7

    throw v4

    .line 676
    :cond_4
    const-wide v4, -0x7fe688e67fe67d00L

    :try_start_2
    iput-wide v4, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 686
    .restart local v1    # "pbState":I
    :cond_5
    const-wide/16 v2, -0x1

    .restart local v2    # "position":J
    goto :goto_2
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 5
    .param p1, "startEmpty"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 592
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-direct {v0, p0, v2}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$MetadataEditor;)V

    .line 593
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_1

    .line 594
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 595
    iput-object v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 596
    iput-boolean v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 597
    iput-boolean v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 598
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    .line 606
    :goto_0
    if-nez p1, :cond_0

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v1, :cond_2

    .line 607
    :cond_0
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1}, Landroid/media/MediaMetadata$Builder;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    .line 611
    :goto_1
    return-object v0

    .line 600
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 601
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 602
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 603
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    goto :goto_0

    .line 609
    :cond_2
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMediaMetadata:Landroid/media/MediaMetadata;

    invoke-direct {v1, v2}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataBuilder:Landroid/media/MediaMetadata$Builder;

    goto :goto_1
.end method

.method public getMediaSession()Landroid/media/session/MediaSession;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    return-object v0
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public registerWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 2
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    .prologue
    .line 377
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mTransportListener:Landroid/media/session/MediaSession$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->addRccListener(Landroid/app/PendingIntent;Landroid/media/session/MediaSession$Callback;)V

    .line 378
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->getSession(Landroid/app/PendingIntent;)Landroid/media/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    .line 379
    iget v0, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 376
    return-void
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .prologue
    .line 751
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 752
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 750
    return-void

    .line 751
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .prologue
    .line 812
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 813
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 811
    return-void

    .line 812
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .prologue
    .line 800
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 799
    return-void

    .line 800
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setPlaybackState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 628
    const-wide v2, -0x7fe688e67fe67d00L

    const/high16 v4, 0x3f800000    # 1.0f

    .line 629
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 628
    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 627
    return-void
.end method

.method public setPlaybackState(IJF)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F

    .prologue
    .line 656
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 655
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 6
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 713
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 715
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 718
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    if-eqz v1, :cond_0

    .line 719
    new-instance v0, Landroid/media/session/PlaybackState$Builder;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-direct {v0, v1}, Landroid/media/session/PlaybackState$Builder;-><init>(Landroid/media/session/PlaybackState;)V

    .line 721
    .local v0, "bob":Landroid/media/session/PlaybackState$Builder;
    invoke-static {p1}, Landroid/media/session/PlaybackState;->getActionsFromRccControlFlags(I)J

    move-result-wide v4

    .line 720
    invoke-virtual {v0, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    .line 722
    invoke-virtual {v0}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v1

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    .line 723
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mSessionPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v1, v3}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "bob":Landroid/media/session/PlaybackState$Builder;
    :cond_0
    monitor-exit v2

    .line 712
    return-void

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisterWithSession(Landroid/media/session/MediaSessionLegacyHelper;)V
    .locals 1
    .param p1, "helper"    # Landroid/media/session/MediaSessionLegacyHelper;

    .prologue
    .line 386
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionLegacyHelper;->removeRccListener(Landroid/app/PendingIntent;)V

    .line 387
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mSession:Landroid/media/session/MediaSession;

    .line 385
    return-void
.end method

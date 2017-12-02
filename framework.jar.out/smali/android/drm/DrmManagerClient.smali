.class public Landroid/drm/DrmManagerClient;
.super Ljava/lang/Object;
.source "DrmManagerClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/drm/DrmManagerClient$EventHandler;,
        Landroid/drm/DrmManagerClient$InfoHandler;,
        Landroid/drm/DrmManagerClient$OnErrorListener;,
        Landroid/drm/DrmManagerClient$OnEventListener;,
        Landroid/drm/DrmManagerClient$OnInfoListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROCESS_DRM_INFO:I = 0x3ea

.field private static final ACTION_REMOVE_ALL_RIGHTS:I = 0x3e9

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final INVALID_SESSION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "DrmManagerClient"


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

.field mEventThread:Landroid/os/HandlerThread;

.field private mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

.field mInfoThread:Landroid/os/HandlerThread;

.field private mNativeContext:J

.field private mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

.field private mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

.field private mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

.field private mUniqueId:I


# direct methods
.method static synthetic -get0(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnErrorListener;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnEventListener;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient$OnInfoListener;
    .locals 1

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/drm/DrmManagerClient;)I
    .locals 1

    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    return v0
.end method

.method static synthetic -wrap0(Landroid/drm/DrmManagerClient;ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
    .locals 1
    .param p1, "uniqueId"    # I
    .param p2, "drmInfo"    # Landroid/drm/DrmInfo;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/drm/DrmManagerClient;->_processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p1, "uniqueId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->_removeAllRights(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p1, "infoType"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getErrorType(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/drm/DrmManagerClient;I)I
    .locals 1
    .param p1, "infoType"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->getEventType(I)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "drmframework_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 254
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    .line 255
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createEventThreads()V

    .line 258
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->_initialize()I

    move-result v0

    iput v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    .line 259
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method private native _acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
.end method

.method private native _canHandle(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private native _checkRightsStatus(ILjava/lang/String;I)I
.end method

.method private native _closeConvertSession(II)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _convertData(II[B)Landroid/drm/DrmConvertedStatus;
.end method

.method private native _getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;
.end method

.method private native _getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;
.end method

.method private native _getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I
.end method

.method private native _getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;
.end method

.method private native _getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
.end method

.method private native _initialize()I
.end method

.method private native _installDrmEngine(ILjava/lang/String;)V
.end method

.method private native _openConvertSession(ILjava/lang/String;)I
.end method

.method private native _processDrmInfo(ILandroid/drm/DrmInfo;)Landroid/drm/DrmInfoStatus;
.end method

.method private native _release(I)V
.end method

.method private native _removeAllRights(I)I
.end method

.method private native _removeRights(ILjava/lang/String;)I
.end method

.method private native _saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native _setListeners(ILjava/lang/Object;)V
.end method

.method private convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 832
    const/4 v8, 0x0

    .line 833
    .local v8, "path":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 834
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    .line 835
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 836
    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 835
    if-eqz v0, :cond_2

    .line 837
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 866
    .end local v8    # "path":Ljava/lang/String;
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v8

    .line 839
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v10    # "scheme":Ljava/lang/String;
    :cond_2
    const-string/jumbo v0, "http"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 840
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "path":Ljava/lang/String;
    goto :goto_0

    .line 842
    .local v8, "path":Ljava/lang/String;
    :cond_3
    const-string/jumbo v0, "content"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 843
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    .line 844
    .local v2, "projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 846
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    .line 847
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 846
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 848
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 849
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri could not be found in media store"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 854
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 855
    .local v7, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri is not formatted in a way so that it can be found in media store."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    .end local v7    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    .line 858
    if-eqz v6, :cond_5

    .line 859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 857
    :cond_5
    throw v0

    .line 848
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_6
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 852
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 853
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 858
    .local v8, "path":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 859
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 863
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "pathIndex":I
    .local v8, "path":Ljava/lang/String;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given Uri scheme is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createEventThreads()V
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-nez v0, :cond_0

    .line 912
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DrmManagerClient.InfoHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 913
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 914
    new-instance v0, Landroid/drm/DrmManagerClient$InfoHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$InfoHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 916
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "DrmManagerClient.EventHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 917
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 918
    new-instance v0, Landroid/drm/DrmManagerClient$EventHandler;

    iget-object v1, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/drm/DrmManagerClient$EventHandler;-><init>(Landroid/drm/DrmManagerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 910
    :cond_0
    return-void
.end method

.method private createListeners()V
    .locals 2

    .prologue
    .line 923
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0, v1}, Landroid/drm/DrmManagerClient;->_setListeners(ILjava/lang/Object;)V

    .line 922
    return-void
.end method

.method private getErrorType(I)I
    .locals 1
    .param p1, "infoType"    # I

    .prologue
    .line 810
    const/4 v0, -0x1

    .line 812
    .local v0, "error":I
    packed-switch p1, :pswitch_data_0

    .line 819
    :goto_0
    return v0

    .line 816
    :pswitch_0
    const/16 v0, 0x7d6

    .line 817
    goto :goto_0

    .line 812
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getEventType(I)I
    .locals 1
    .param p1, "infoType"    # I

    .prologue
    .line 797
    const/4 v0, -0x1

    .line 799
    .local v0, "eventType":I
    packed-switch p1, :pswitch_data_0

    .line 806
    :goto_0
    return v0

    .line 803
    :pswitch_0
    const/16 v0, 0x3ea

    .line 804
    goto :goto_0

    .line 799
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static notify(Ljava/lang/Object;IILjava/lang/String;)V
    .locals 4
    .param p0, "thisReference"    # Ljava/lang/Object;
    .param p1, "uniqueId"    # I
    .param p2, "infoType"    # I
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 185
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "thisReference":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/drm/DrmManagerClient;

    .line 187
    .local v0, "instance":Landroid/drm/DrmManagerClient;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 189
    const/4 v3, 0x1

    .line 188
    invoke-virtual {v2, v3, p1, p2, p3}, Landroid/drm/DrmManagerClient$InfoHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 190
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    invoke-virtual {v2, v1}, Landroid/drm/DrmManagerClient$InfoHandler;->sendMessage(Landroid/os/Message;)Z

    .line 184
    .end local v1    # "m":Landroid/os/Message;
    :cond_0
    return-void
.end method


# virtual methods
.method public acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;
    .locals 2
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 526
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/drm/DrmInfoRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_acquireDrmInfo(ILandroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    return-object v0

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given drmInfoRequest is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public acquireRights(Landroid/drm/DrmInfoRequest;)I
    .locals 2
    .param p1, "drmInfoRequest"    # Landroid/drm/DrmInfoRequest;

    .prologue
    .line 547
    invoke-virtual {p0, p1}, Landroid/drm/DrmManagerClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 548
    .local v0, "drmInfo":Landroid/drm/DrmInfo;
    if-nez v0, :cond_0

    .line 549
    const/16 v1, -0x7d0

    return v1

    .line 551
    :cond_0
    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->processDrmInfo(Landroid/drm/DrmInfo;)I

    move-result v1

    return v1
.end method

.method public canHandle(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 493
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_2
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canHandle(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 478
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 479
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_canHandle(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 663
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 664
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Landroid/net/Uri;I)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 695
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 652
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public checkRightsStatus(Ljava/lang/String;I)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 679
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_checkRightsStatus(ILjava/lang/String;I)I

    move-result v0

    return v0

    .line 680
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given path or action is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 281
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 282
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 285
    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mEventThread:Landroid/os/HandlerThread;

    .line 287
    :cond_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 289
    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mInfoThread:Landroid/os/HandlerThread;

    .line 291
    :cond_1
    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    .line 292
    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mInfoHandler:Landroid/drm/DrmManagerClient$InfoHandler;

    .line 293
    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 294
    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 295
    iput-object v3, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 296
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0}, Landroid/drm/DrmManagerClient;->_release(I)V

    .line 280
    :cond_2
    return-void
.end method

.method public closeConvertSession(I)Landroid/drm/DrmConvertedStatus;
    .locals 1
    .param p1, "convertId"    # I

    .prologue
    .line 793
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_closeConvertSession(II)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method public convertData(I[B)Landroid/drm/DrmConvertedStatus;
    .locals 2
    .param p1, "convertId"    # I
    .param p2, "inputData"    # [B

    .prologue
    .line 775
    if-eqz p2, :cond_0

    array-length v0, p2

    if-gtz v0, :cond_1

    .line 776
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given inputData should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_convertData(II[B)Landroid/drm/DrmConvertedStatus;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/drm/DrmManagerClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 266
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 263
    return-void

    .line 267
    :catchall_0
    move-exception v0

    .line 268
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 267
    throw v0
.end method

.method public getAvailableDrmEngines()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 354
    iget v4, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v4}, Landroid/drm/DrmManagerClient;->_getAllSupportInfo(I)[Landroid/drm/DrmSupportInfo;

    move-result-object v3

    .line 355
    .local v3, "supportInfos":[Landroid/drm/DrmSupportInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v0, "descriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 358
    aget-object v4, v3, v2

    invoke-virtual {v4}, Landroid/drm/DrmSupportInfo;->getDescriprition()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Ljava/lang/String;

    .line 362
    .local v1, "drmEngines":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    return-object v4
.end method

.method public getConstraints(Landroid/net/Uri;I)Landroid/content/ContentValues;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "action"    # I

    .prologue
    .line 407
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/drm/DrmManagerClient;->getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getConstraints(Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "action"    # I

    .prologue
    .line 376
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/drm/DrmStore$Action;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getConstraints(ILjava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given usage or path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrmObjectType(Landroid/net/Uri;Ljava/lang/String;)I
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 582
    if-eqz p1, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, p1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 583
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Uri or the mimetype should be non null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 585
    :cond_2
    const-string/jumbo v1, ""

    .line 587
    .local v1, "path":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 592
    :goto_0
    invoke-virtual {p0, v1, p2}, Landroid/drm/DrmManagerClient;->getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2

    .line 588
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrmManagerClient"

    const-string/jumbo v3, "Given Uri could not be found in media store"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDrmObjectType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 565
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path or the mimetype should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_2
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2}, Landroid/drm/DrmManagerClient;->_getDrmObjectType(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMetadata(Landroid/net/Uri;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 422
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Uri should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 425
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 391
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 392
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given path is invalid/null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_getMetadata(ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 638
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 603
    if-eqz p1, :cond_0

    const-string/jumbo v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 604
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Given path should be non null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 607
    :cond_1
    const/4 v6, 0x0

    .line 609
    .local v6, "mime":Ljava/lang/String;
    const/4 v4, 0x0

    .line 611
    .local v4, "is":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 612
    .local v1, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 614
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v4    # "is":Ljava/io/FileInputStream;
    move-result-object v1

    .local v1, "fd":Ljava/io/FileDescriptor;
    move-object v4, v5

    .line 617
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    .end local v5    # "is":Ljava/io/FileInputStream;
    :cond_2
    :try_start_2
    iget v7, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v7, p1, v1}, Landroid/drm/DrmManagerClient;->_getOriginalMimeType(ILjava/lang/String;Ljava/io/FileDescriptor;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 620
    .local v6, "mime":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 622
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 627
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "mime":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v6

    .line 623
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "mime":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    .line 618
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    .local v6, "mime":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 620
    .local v3, "ioe":Ljava/io/IOException;
    :goto_1
    if-eqz v4, :cond_3

    .line 622
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 623
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 619
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 620
    :goto_2
    if-eqz v4, :cond_4

    .line 622
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 619
    :cond_4
    :goto_3
    throw v7

    .line 623
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 619
    .end local v0    # "e":Ljava/io/IOException;
    .local v1, "fd":Ljava/io/FileDescriptor;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v4, "is":Ljava/io/FileInputStream;
    goto :goto_2

    .line 618
    .end local v4    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v3

    .restart local v3    # "ioe":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "is":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public installDrmEngine(Ljava/lang/String;)V
    .locals 3
    .param p1, "engineFilePath"    # Ljava/lang/String;

    .prologue
    .line 462
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Given engineFilePath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 463
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 466
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_installDrmEngine(ILjava/lang/String;)V

    .line 461
    return-void
.end method

.method public openConvertSession(Ljava/lang/String;)I
    .locals 2
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 755
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Path or the mimeType should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_openConvertSession(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public processDrmInfo(Landroid/drm/DrmInfo;)I
    .locals 4
    .param p1, "drmInfo"    # Landroid/drm/DrmInfo;

    .prologue
    .line 506
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/drm/DrmInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    const/16 v1, -0x7d0

    .line 510
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3ea

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 512
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    .line 514
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 507
    .end local v1    # "result":I
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Given drmInfo is invalid/null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 509
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v1    # "result":I
    :cond_2
    const/16 v1, -0x7d0

    .line 512
    goto :goto_0
.end method

.method public release()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/drm/DrmManagerClient;->close()V

    .line 304
    return-void
.end method

.method public removeAllRights()I
    .locals 4

    .prologue
    .line 736
    const/16 v1, -0x7d0

    .line 737
    .local v1, "result":I
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    if-eqz v2, :cond_0

    .line 738
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Landroid/drm/DrmManagerClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 739
    .local v0, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/drm/DrmManagerClient;->mEventHandler:Landroid/drm/DrmManagerClient$EventHandler;

    invoke-virtual {v2, v0}, Landroid/drm/DrmManagerClient$EventHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    .line 741
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return v1

    .line 736
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/16 v1, -0x7d0

    .line 739
    goto :goto_0
.end method

.method public removeRights(Landroid/net/Uri;)I
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 723
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v0, p1, :cond_1

    .line 724
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given uri is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 726
    :cond_1
    invoke-direct {p0, p1}, Landroid/drm/DrmManagerClient;->convertUriToPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/drm/DrmManagerClient;->removeRights(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeRights(Ljava/lang/String;)I
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 709
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given path should be non null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_1
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1}, Landroid/drm/DrmManagerClient;->_removeRights(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "drmRights"    # Landroid/drm/DrmRights;
    .param p2, "rightsPath"    # Ljava/lang/String;
    .param p3, "contentPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 445
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/drm/DrmRights;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    if-eqz p2, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    :cond_0
    :goto_0
    iget v0, p0, Landroid/drm/DrmManagerClient;->mUniqueId:I

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/drm/DrmManagerClient;->_saveRights(ILandroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 446
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Given drmRights or contentPath is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :cond_2
    invoke-virtual {p1}, Landroid/drm/DrmRights;->getData()[B

    move-result-object v0

    invoke-static {p2, v0}, Landroid/drm/DrmUtils;->writeToFile(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public declared-synchronized setOnErrorListener(Landroid/drm/DrmManagerClient$OnErrorListener;)V
    .locals 1
    .param p1, "errorListener"    # Landroid/drm/DrmManagerClient$OnErrorListener;

    .prologue
    monitor-enter p0

    .line 341
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnErrorListener:Landroid/drm/DrmManagerClient$OnErrorListener;

    .line 342
    if-eqz p1, :cond_0

    .line 343
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 340
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnEventListener(Landroid/drm/DrmManagerClient$OnEventListener;)V
    .locals 1
    .param p1, "eventListener"    # Landroid/drm/DrmManagerClient$OnEventListener;

    .prologue
    monitor-enter p0

    .line 328
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnEventListener:Landroid/drm/DrmManagerClient$OnEventListener;

    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 327
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setOnInfoListener(Landroid/drm/DrmManagerClient$OnInfoListener;)V
    .locals 1
    .param p1, "infoListener"    # Landroid/drm/DrmManagerClient$OnInfoListener;

    .prologue
    monitor-enter p0

    .line 315
    :try_start_0
    iput-object p1, p0, Landroid/drm/DrmManagerClient;->mOnInfoListener:Landroid/drm/DrmManagerClient$OnInfoListener;

    .line 316
    if-eqz p1, :cond_0

    .line 317
    invoke-direct {p0}, Landroid/drm/DrmManagerClient;->createListeners()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 314
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

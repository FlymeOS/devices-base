.class final Lcom/android/server/am/TaskRecord;
.super Ljava/lang/Object;
.source "TaskRecord.java"


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_FIRSTACTIVETIME:Ljava/lang/String; = "first_active_time"

.field private static final ATTR_LASTACTIVETIME:Ljava/lang/String; = "last_active_time"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_PRIVILEGED:Ljava/lang/String; = "privileged"

.field static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"

.field static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_TASK_AFFILIATION_COLOR:Ljava/lang/String; = "task_affiliation_color"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final INVALID_TASK_ID:I = -0x1

.field static final LOCK_TASK_AUTH_DONT_LOCK:I = 0x0

.field static final LOCK_TASK_AUTH_LAUNCHABLE:I = 0x2

.field static final LOCK_TASK_AUTH_LAUNCHABLE_PRIV:I = 0x4

.field static final LOCK_TASK_AUTH_PINNABLE:I = 0x1

.field static final LOCK_TASK_AUTH_WHITELISTED:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ADD_REMOVE:Ljava/lang/String;

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_LOCKTASK:Ljava/lang/String;

.field private static final TAG_RECENTS:Ljava/lang/String;

.field private static final TAG_TASKS:Ljava/lang/String;

.field private static final TASK_THUMBNAIL_SUFFIX:Ljava/lang/String; = "_task_thumbnail"


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field firstActiveTime:J

.field hasBeenVisible:Z

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mAffiliatedTaskColor:I

.field mAffiliatedTaskId:I

.field mBounds:Landroid/graphics/Rect;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private final mFilename:Ljava/lang/String;

.field mFullscreen:Z

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field private mLastThumbnail:Landroid/graphics/Bitmap;

.field private final mLastThumbnailFile:Ljava/io/File;

.field private mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

.field mLastTimeMoved:J

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskMode:I

.field mLockTaskUid:I

.field mMinHeight:I

.field mMinWidth:I

.field mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/am/TaskRecord;

.field mNextAffiliateTaskId:I

.field mOverrideConfig:Landroid/content/res/Configuration;

.field mPrevAffiliate:Lcom/android/server/am/TaskRecord;

.field mPrevAffiliateTaskId:I

.field private mPrivileged:Z

.field mResizeMode:I

.field private mReuseTask:Z

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field private mTaskToReturnTo:I

.field mTemporarilyUnresizable:Z

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;

.field mUserSetupComplete:Z

.field maxRecents:I

.field numFullscreen:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stack:Lcom/android/server/am/ActivityStack;

.field stringName:Ljava/lang/String;

.field final taskId:I

.field taskType:I

.field userId:I

.field final voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_ADD_REMOVE:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_RECENTS:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_LOCKTASK:Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/TaskRecord;->TAG_TASKS:Ljava/lang/String;

    .line 95
    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V
    .locals 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "_intent"    # Landroid/content/Intent;
    .param p4, "_affinityIntent"    # Landroid/content/Intent;
    .param p5, "_affinity"    # Ljava/lang/String;
    .param p6, "_rootAffinity"    # Ljava/lang/String;
    .param p7, "_realActivity"    # Landroid/content/ComponentName;
    .param p8, "_origActivity"    # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"    # Z
    .param p10, "_autoRemoveRecents"    # Z
    .param p11, "_askedCompatMode"    # Z
    .param p12, "_taskType"    # I
    .param p13, "_userId"    # I
    .param p14, "_effectiveUid"    # I
    .param p15, "_lastDescription"    # Ljava/lang/String;
    .param p17, "_firstActiveTime"    # J
    .param p19, "_lastActiveTime"    # J
    .param p21, "lastTimeMoved"    # J
    .param p23, "neverRelinquishIdentity"    # Z
    .param p24, "_lastTaskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p25, "lastThumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;
    .param p26, "taskAffiliation"    # I
    .param p27, "prevTaskId"    # I
    .param p28, "nextTaskId"    # I
    .param p29, "taskAffiliationColor"    # I
    .param p30, "callingUid"    # I
    .param p31, "callingPackage"    # Ljava/lang/String;
    .param p32, "resizeMode"    # I
    .param p33, "privileged"    # Z
    .param p34, "_realActivitySuspended"    # Z
    .param p35, "userSetupComplete"    # Z
    .param p36, "minWidth"    # I
    .param p37, "minHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityManagerService;",
            "I",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/content/ComponentName;",
            "ZZZIII",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;JJJZ",
            "Landroid/app/ActivityManager$TaskDescription;",
            "Landroid/app/ActivityManager$TaskThumbnailInfo;",
            "IIIII",
            "Ljava/lang/String;",
            "IZZZII)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p16, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 193
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 197
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v2}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 220
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 223
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 227
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 238
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 240
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 249
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 252
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 253
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 254
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 256
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 261
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 269
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 271
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 336
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 337
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_task_thumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 338
    const-string/jumbo v3, ".png"

    .line 337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 339
    new-instance v2, Ljava/io/File;

    invoke-static/range {p13 .. p13}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 340
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 341
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 342
    iput-object p3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 343
    iput-object p4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    .line 344
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 345
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 346
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 347
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 348
    iput-object p7, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 349
    move/from16 v0, p34

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    .line 350
    iput-object p8, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 351
    iput-boolean p9, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 352
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 353
    iput-boolean p10, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 354
    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    .line 355
    move/from16 v0, p12

    iput v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 356
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 357
    move/from16 v0, p13

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 358
    move/from16 v0, p35

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 359
    move/from16 v0, p14

    iput v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 360
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 361
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 362
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 363
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 364
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 365
    move/from16 v0, p23

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 366
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 367
    move/from16 v0, p26

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 368
    move/from16 v0, p29

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 369
    move/from16 v0, p27

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 370
    move/from16 v0, p28

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 371
    move/from16 v0, p30

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 372
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 373
    move/from16 v0, p32

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 374
    move/from16 v0, p33

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 375
    move/from16 v0, p36

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 376
    move/from16 v0, p37

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 335
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_taskDescription"    # Landroid/app/ActivityManager$TaskDescription;
    .param p6, "thumbnailInfo"    # Landroid/app/ActivityManager$TaskThumbnailInfo;

    .prologue
    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 193
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 197
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 209
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 220
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 223
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 227
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 238
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 240
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 249
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 252
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 261
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 269
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 271
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 296
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 298
    const-string/jumbo v1, ".png"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 299
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 300
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 301
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 302
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 303
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 304
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 305
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 306
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 308
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 309
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 310
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 311
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 313
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 314
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 316
    iget v0, p3, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 317
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 316
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 319
    iput v4, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 320
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 321
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 322
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 295
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_taskId"    # I
    .param p3, "info"    # Landroid/content/pm/ActivityInfo;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_voiceSession"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p6, "_voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    .line 193
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskUid:I

    .line 197
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 209
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    .line 220
    iput v4, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 223
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 227
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 238
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 240
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 249
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 252
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 254
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 255
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    .line 261
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 269
    iput v2, p0, Lcom/android/server/am/TaskRecord;->mLayerRank:I

    .line 271
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 275
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_task_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 277
    const-string/jumbo v1, ".png"

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    .line 278
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 279
    new-instance v0, Ljava/io/File;

    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v1}, Lcom/android/server/am/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 280
    new-instance v0, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 281
    iput p2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 282
    iput p2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 283
    iput-object p5, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 284
    iput-object p6, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 285
    iput-boolean v3, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 287
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 288
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 289
    invoke-direct {p0, p4, p3}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 290
    invoke-direct {p0, p3}, Lcom/android/server/am/TaskRecord;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 274
    return-void
.end method

.method private adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v6, -0x1

    .line 1395
    if-nez p1, :cond_0

    .line 1396
    return-void

    .line 1398
    :cond_0
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 1399
    .local v3, "minWidth":I
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 1403
    .local v2, "minHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_2

    .line 1404
    if-ne v3, v6, :cond_1

    .line 1405
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v3, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1407
    :cond_1
    if-ne v2, v6, :cond_2

    .line 1408
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget v2, v4, Lcom/android/server/am/ActivityStackSupervisor;->mDefaultMinSizeOfResizeableTask:I

    .line 1411
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-le v3, v4, :cond_3

    const/4 v1, 0x1

    .line 1412
    .local v1, "adjustWidth":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-le v2, v4, :cond_4

    const/4 v0, 0x1

    .line 1413
    .local v0, "adjustHeight":Z
    :goto_1
    if-nez v1, :cond_5

    move v4, v0

    :goto_2
    if-nez v4, :cond_6

    .line 1414
    return-void

    .line 1411
    .end local v0    # "adjustHeight":Z
    .end local v1    # "adjustWidth":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "adjustWidth":Z
    goto :goto_0

    .line 1412
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "adjustHeight":Z
    goto :goto_1

    .line 1413
    :cond_5
    const/4 v4, 0x1

    goto :goto_2

    .line 1417
    :cond_6
    if-eqz v1, :cond_7

    .line 1418
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_9

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_9

    .line 1419
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 1426
    :cond_7
    :goto_3
    if-eqz v0, :cond_8

    .line 1427
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_a

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_a

    .line 1428
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 1394
    :cond_8
    :goto_4
    return-void

    .line 1423
    :cond_9
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 1432
    :cond_a
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_4
.end method

.method private calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;
    .locals 10
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1514
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1515
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1517
    iget-object v9, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_0

    move-object v8, p2

    .line 1516
    :goto_0
    invoke-direct {p0, v9, v8, p3, p4}, Lcom/android/server/am/TaskRecord;->subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1520
    iget-object v9, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_1

    move-object v8, p2

    .line 1519
    :goto_1
    invoke-direct {p0, v9, v8, p3, p4}, Lcom/android/server/am/TaskRecord;->subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 1525
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 1526
    .local v5, "serviceConfig":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    sget-object v8, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v2, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1528
    .local v2, "config":Landroid/content/res/Configuration;
    iget v8, v5, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v8, v8

    const v9, 0x3bcccccd    # 0.00625f

    mul-float v3, v8, v9

    .line 1530
    .local v3, "density":F
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v5, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1529
    iput v8, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1532
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v8, v8

    iget v9, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1531
    iput v8, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1535
    iget v8, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v9, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v8, v9, :cond_2

    .line 1536
    const/4 v8, 0x1

    .line 1535
    :goto_2
    iput v8, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1542
    iget v8, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v8, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1547
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v1, v8

    .line 1548
    .local v1, "compatScreenWidthDp":I
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v3

    float-to-int v0, v8

    .line 1549
    .local v0, "compatScreenHeightDp":I
    iget v8, v5, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v8}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v7

    .line 1550
    .local v7, "sl":I
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1551
    .local v4, "longSize":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1552
    .local v6, "shortSize":I
    invoke-static {v7, v4, v6}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v8

    iput v8, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 1554
    iget-object v8, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1555
    if-eqz p2, :cond_3

    .line 1554
    .end local p2    # "insetBounds":Landroid/graphics/Rect;
    :goto_3
    invoke-virtual {v8, p2}, Lcom/android/server/wm/WindowManagerService;->getSmallestWidthForTaskBounds(Landroid/graphics/Rect;)I

    move-result v8

    iput v8, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1556
    return-object v2

    .end local v0    # "compatScreenHeightDp":I
    .end local v1    # "compatScreenWidthDp":I
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "density":F
    .end local v4    # "longSize":I
    .end local v5    # "serviceConfig":Landroid/content/res/Configuration;
    .end local v6    # "shortSize":I
    .end local v7    # "sl":I
    .restart local p2    # "insetBounds":Landroid/graphics/Rect;
    :cond_0
    move-object v8, p1

    .line 1517
    goto/16 :goto_0

    :cond_1
    move-object v8, p1

    .line 1520
    goto :goto_1

    .line 1537
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v3    # "density":F
    .restart local v5    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_2
    const/4 v8, 0x2

    goto :goto_2

    .restart local v0    # "compatScreenHeightDp":I
    .restart local v1    # "compatScreenWidthDp":I
    .restart local v4    # "longSize":I
    .restart local v6    # "shortSize":I
    .restart local v7    # "sl":I
    :cond_3
    move-object p2, p1

    .line 1555
    goto :goto_3
.end method

.method static restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/TaskRecord;
    .locals 58
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "stackSupervisor"    # Lcom/android/server/am/ActivityStackSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 1216
    const/4 v8, 0x0

    .line 1217
    .local v8, "intent":Landroid/content/Intent;
    const/4 v9, 0x0

    .line 1218
    .local v9, "affinityIntent":Landroid/content/Intent;
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v21, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v12, 0x0

    .line 1220
    .local v12, "realActivity":Landroid/content/ComponentName;
    const/16 v39, 0x0

    .line 1221
    .local v39, "realActivitySuspended":Z
    const/4 v13, 0x0

    .line 1222
    .local v13, "origActivity":Landroid/content/ComponentName;
    const/4 v10, 0x0

    .line 1223
    .local v10, "affinity":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1224
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v52, 0x0

    .line 1225
    .local v52, "hasRootAffinity":Z
    const/4 v14, 0x0

    .line 1226
    .local v14, "rootHasReset":Z
    const/4 v15, 0x0

    .line 1227
    .local v15, "autoRemoveRecents":Z
    const/16 v16, 0x0

    .line 1228
    .local v16, "askedCompatMode":Z
    const/16 v17, 0x0

    .line 1229
    .local v17, "taskType":I
    const/16 v18, 0x0

    .line 1230
    .local v18, "userId":I
    const/16 v40, 0x1

    .line 1231
    .local v40, "userSetupComplete":Z
    const/16 v19, -0x1

    .line 1232
    .local v19, "effectiveUid":I
    const/16 v20, 0x0

    .line 1233
    .local v20, "lastDescription":Ljava/lang/String;
    const-wide/16 v22, -0x1

    .line 1234
    .local v22, "firstActiveTime":J
    const-wide/16 v24, -0x1

    .line 1235
    .local v24, "lastActiveTime":J
    const-wide/16 v26, 0x0

    .line 1236
    .local v26, "lastTimeOnTop":J
    const/16 v28, 0x1

    .line 1237
    .local v28, "neverRelinquishIdentity":Z
    const/4 v7, -0x1

    .line 1238
    .local v7, "taskId":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v54

    .line 1239
    .local v54, "outerDepth":I
    new-instance v29, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v29 .. v29}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 1240
    .local v29, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v30, Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-direct/range {v30 .. v30}, Landroid/app/ActivityManager$TaskThumbnailInfo;-><init>()V

    .line 1241
    .local v30, "thumbnailInfo":Landroid/app/ActivityManager$TaskThumbnailInfo;
    const/16 v31, -0x1

    .line 1242
    .local v31, "taskAffiliation":I
    const/16 v34, 0x0

    .line 1243
    .local v34, "taskAffiliationColor":I
    const/16 v32, -0x1

    .line 1244
    .local v32, "prevTaskId":I
    const/16 v33, -0x1

    .line 1245
    .local v33, "nextTaskId":I
    const/16 v35, -0x1

    .line 1246
    .local v35, "callingUid":I
    const-string/jumbo v36, ""

    .line 1247
    .local v36, "callingPackage":Ljava/lang/String;
    const/16 v37, 0x4

    .line 1248
    .local v37, "resizeMode":I
    const/16 v38, 0x0

    .line 1249
    .local v38, "privileged":Z
    const/16 v48, 0x0

    .line 1250
    .local v48, "bounds":Landroid/graphics/Rect;
    const/16 v41, -0x1

    .line 1251
    .local v41, "minWidth":I
    const/16 v42, -0x1

    .line 1253
    .local v42, "minHeight":I
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v6

    add-int/lit8 v46, v6, -0x1

    .end local v10    # "affinity":Ljava/lang/String;
    .end local v11    # "rootAffinity":Ljava/lang/String;
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    .end local v14    # "rootHasReset":Z
    .end local v15    # "autoRemoveRecents":Z
    .end local v16    # "askedCompatMode":Z
    .end local v20    # "lastDescription":Ljava/lang/String;
    .end local v28    # "neverRelinquishIdentity":Z
    .end local v38    # "privileged":Z
    .end local v39    # "realActivitySuspended":Z
    .end local v40    # "userSetupComplete":Z
    .end local v48    # "bounds":Landroid/graphics/Rect;
    .local v46, "attrNdx":I
    :goto_0
    if-ltz v46, :cond_21

    .line 1254
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v45

    .line 1255
    .local v45, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v47

    .line 1258
    .local v47, "attrValue":Ljava/lang/String;
    const-string/jumbo v6, "task_id"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1259
    const/4 v6, -0x1

    if-ne v7, v6, :cond_0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 1253
    :cond_0
    :goto_1
    add-int/lit8 v46, v46, -0x1

    goto :goto_0

    .line 1260
    :cond_1
    const-string/jumbo v6, "real_activity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1261
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .local v12, "realActivity":Landroid/content/ComponentName;
    goto :goto_1

    .line 1262
    .end local v12    # "realActivity":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v6, "real_activity_suspended"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1263
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v39

    .local v39, "realActivitySuspended":Z
    goto :goto_1

    .line 1264
    .end local v39    # "realActivitySuspended":Z
    :cond_3
    const-string/jumbo v6, "orig_activity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1265
    invoke-static/range {v47 .. v47}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .local v13, "origActivity":Landroid/content/ComponentName;
    goto :goto_1

    .line 1266
    .end local v13    # "origActivity":Landroid/content/ComponentName;
    :cond_4
    const-string/jumbo v6, "affinity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1267
    move-object/from16 v10, v47

    .local v10, "affinity":Ljava/lang/String;
    goto :goto_1

    .line 1268
    .end local v10    # "affinity":Ljava/lang/String;
    :cond_5
    const-string/jumbo v6, "root_affinity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1269
    move-object/from16 v11, v47

    .line 1270
    .local v11, "rootAffinity":Ljava/lang/String;
    const/16 v52, 0x1

    goto :goto_1

    .line 1271
    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "root_has_reset"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1272
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    .local v14, "rootHasReset":Z
    goto :goto_1

    .line 1273
    .end local v14    # "rootHasReset":Z
    :cond_7
    const-string/jumbo v6, "auto_remove_recents"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1274
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .local v15, "autoRemoveRecents":Z
    goto :goto_1

    .line 1275
    .end local v15    # "autoRemoveRecents":Z
    :cond_8
    const-string/jumbo v6, "asked_compat_mode"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1276
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .local v16, "askedCompatMode":Z
    goto/16 :goto_1

    .line 1277
    .end local v16    # "askedCompatMode":Z
    :cond_9
    const-string/jumbo v6, "user_id"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1278
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    goto/16 :goto_1

    .line 1279
    :cond_a
    const-string/jumbo v6, "user_setup_complete"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1280
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v40

    .local v40, "userSetupComplete":Z
    goto/16 :goto_1

    .line 1281
    .end local v40    # "userSetupComplete":Z
    :cond_b
    const-string/jumbo v6, "effective_uid"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1282
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    goto/16 :goto_1

    .line 1283
    :cond_c
    const-string/jumbo v6, "task_type"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1284
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    goto/16 :goto_1

    .line 1285
    :cond_d
    const-string/jumbo v6, "first_active_time"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1286
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    goto/16 :goto_1

    .line 1287
    :cond_e
    const-string/jumbo v6, "last_active_time"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1288
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    goto/16 :goto_1

    .line 1289
    :cond_f
    const-string/jumbo v6, "last_description"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1290
    move-object/from16 v20, v47

    .local v20, "lastDescription":Ljava/lang/String;
    goto/16 :goto_1

    .line 1291
    .end local v20    # "lastDescription":Ljava/lang/String;
    :cond_10
    const-string/jumbo v6, "last_time_moved"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 1292
    invoke-static/range {v47 .. v47}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    goto/16 :goto_1

    .line 1293
    :cond_11
    const-string/jumbo v6, "never_relinquish_identity"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1294
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    .local v28, "neverRelinquishIdentity":Z
    goto/16 :goto_1

    .line 1295
    .end local v28    # "neverRelinquishIdentity":Z
    :cond_12
    const-string/jumbo v6, "task_thumbnailinfo_"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1296
    move-object/from16 v0, v30

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskThumbnailInfo;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1297
    :cond_13
    const-string/jumbo v6, "task_description_"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1298
    move-object/from16 v0, v29

    move-object/from16 v1, v45

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1299
    :cond_14
    const-string/jumbo v6, "task_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 1300
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    goto/16 :goto_1

    .line 1301
    :cond_15
    const-string/jumbo v6, "prev_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 1302
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    goto/16 :goto_1

    .line 1303
    :cond_16
    const-string/jumbo v6, "next_affiliation"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1304
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    goto/16 :goto_1

    .line 1305
    :cond_17
    const-string/jumbo v6, "task_affiliation_color"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 1306
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    goto/16 :goto_1

    .line 1307
    :cond_18
    const-string/jumbo v6, "calling_uid"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1308
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    goto/16 :goto_1

    .line 1309
    :cond_19
    const-string/jumbo v6, "calling_package"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 1310
    move-object/from16 v36, v47

    goto/16 :goto_1

    .line 1311
    :cond_1a
    const-string/jumbo v6, "resize_mode"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 1312
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    .line 1313
    const/4 v6, 0x1

    move/from16 v0, v37

    if-ne v0, v6, :cond_0

    .line 1314
    const/16 v37, 0x4

    goto/16 :goto_1

    .line 1315
    :cond_1b
    const-string/jumbo v6, "privileged"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1316
    invoke-static/range {v47 .. v47}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v38

    .local v38, "privileged":Z
    goto/16 :goto_1

    .line 1317
    .end local v38    # "privileged":Z
    :cond_1c
    const-string/jumbo v6, "non_fullscreen_bounds"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1318
    invoke-static/range {v47 .. v47}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v48

    .local v48, "bounds":Landroid/graphics/Rect;
    goto/16 :goto_1

    .line 1319
    .end local v48    # "bounds":Landroid/graphics/Rect;
    :cond_1d
    const-string/jumbo v6, "min_width"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1320
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v41

    goto/16 :goto_1

    .line 1321
    :cond_1e
    const-string/jumbo v6, "min_height"

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    .line 1322
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v42

    goto/16 :goto_1

    .line 1324
    :cond_1f
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "TaskRecord: Unknown attribute="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1339
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    .end local v45    # "attrName":Ljava/lang/String;
    .end local v47    # "attrValue":Ljava/lang/String;
    .local v51, "event":I
    .local v53, "name":Ljava/lang/String;
    :cond_20
    const-string/jumbo v6, "activity"

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_24

    .line 1340
    invoke-static/range {p0 .. p1}, Lcom/android/server/am/ActivityRecord;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 1343
    .local v4, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_21

    .line 1344
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    .end local v4    # "activity":Lcom/android/server/am/ActivityRecord;
    .end local v51    # "event":I
    .end local v53    # "name":Ljava/lang/String;
    :cond_21
    :goto_2
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v51

    .restart local v51    # "event":I
    const/4 v6, 0x1

    move/from16 v0, v51

    if-eq v0, v6, :cond_25

    .line 1330
    const/4 v6, 0x3

    move/from16 v0, v51

    if-ne v0, v6, :cond_22

    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    move/from16 v0, v54

    if-lt v6, v0, :cond_25

    .line 1331
    :cond_22
    const/4 v6, 0x2

    move/from16 v0, v51

    if-ne v0, v6, :cond_21

    .line 1332
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v53

    .line 1335
    .restart local v53    # "name":Ljava/lang/String;
    const-string/jumbo v6, "affinity_intent"

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    .line 1336
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v9

    .local v9, "affinityIntent":Landroid/content/Intent;
    goto :goto_2

    .line 1337
    .end local v9    # "affinityIntent":Landroid/content/Intent;
    :cond_23
    const-string/jumbo v6, "intent"

    move-object/from16 v0, v53

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 1338
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    .local v8, "intent":Landroid/content/Intent;
    goto :goto_2

    .line 1347
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_24
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "restoreTask: Unexpected name="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1352
    .end local v53    # "name":Ljava/lang/String;
    :cond_25
    if-nez v52, :cond_29

    .line 1353
    move-object v11, v10

    .line 1357
    :cond_26
    :goto_3
    if-gtz v19, :cond_28

    .line 1358
    if-eqz v8, :cond_2a

    move-object/from16 v49, v8

    .line 1359
    .local v49, "checkIntent":Landroid/content/Intent;
    :goto_4
    const/16 v19, 0x0

    .line 1360
    if-eqz v49, :cond_27

    .line 1361
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v55

    .line 1364
    .local v55, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-virtual/range {v49 .. v49}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1365
    const/16 v56, 0x2200

    .line 1363
    move-object/from16 v0, v55

    move/from16 v1, v56

    move/from16 v2, v18

    invoke-interface {v0, v6, v1, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v44

    .line 1367
    .local v44, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v44, :cond_27

    .line 1368
    move-object/from16 v0, v44

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1373
    .end local v44    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v55    # "pm":Landroid/content/pm/IPackageManager;
    :cond_27
    :goto_5
    sget-object v6, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v57, "Updating task #"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " for "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    .line 1374
    const-string/jumbo v57, ": effectiveUid="

    .line 1373
    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    .end local v49    # "checkIntent":Landroid/content/Intent;
    :cond_28
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v5 .. v42}, Lcom/android/server/am/TaskRecord;-><init>(Lcom/android/server/am/ActivityManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIIILjava/lang/String;Ljava/util/ArrayList;JJJZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$TaskThumbnailInfo;IIIIILjava/lang/String;IZZZII)V

    .line 1384
    .local v5, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v48

    invoke-virtual {v5, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1386
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v43, v6, -0x1

    .local v43, "activityNdx":I
    :goto_6
    if-ltz v43, :cond_2b

    .line 1387
    move-object/from16 v0, v21

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1386
    add-int/lit8 v43, v43, -0x1

    goto :goto_6

    .line 1354
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    :cond_29
    const-string/jumbo v6, "@"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1355
    const/4 v11, 0x0

    .local v11, "rootAffinity":Ljava/lang/String;
    goto/16 :goto_3

    .end local v11    # "rootAffinity":Ljava/lang/String;
    :cond_2a
    move-object/from16 v49, v9

    .line 1358
    goto/16 :goto_4

    .line 1391
    .restart local v5    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v43    # "activityNdx":I
    :cond_2b
    return-object v5

    .line 1370
    .end local v5    # "task":Lcom/android/server/am/TaskRecord;
    .end local v43    # "activityNdx":I
    .restart local v49    # "checkIntent":Landroid/content/Intent;
    .restart local v55    # "pm":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v50

    .local v50, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .locals 9
    .param p1, "_intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 399
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_6

    .line 401
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_5

    move v4, v5

    .line 400
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    .line 406
    :cond_0
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    .line 407
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_1

    .line 411
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    .line 413
    :cond_1
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    .line 414
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 416
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 417
    if-eqz p1, :cond_3

    .line 421
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 422
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 423
    .end local p1    # "_intent":Landroid/content/Intent;
    .local v0, "_intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 424
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 428
    .end local v0    # "_intent":Landroid/content/Intent;
    .restart local p1    # "_intent":Landroid/content/Intent;
    :cond_3
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 429
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 430
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    .line 451
    :goto_2
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v4, :cond_a

    move v1, v6

    .line 452
    .local v1, "intentFlags":I
    :goto_3
    const/high16 v4, 0x200000

    and-int/2addr v4, v1

    if-eqz v4, :cond_4

    .line 455
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    .line 457
    :cond_4
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 458
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 459
    const-string/jumbo v7, "user_setup_complete"

    iget v8, p0, Lcom/android/server/am/TaskRecord;->userId:I

    .line 458
    invoke-static {v4, v7, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v5

    :goto_4
    iput-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    .line 460
    iget v4, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_c

    .line 462
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    .line 476
    :goto_5
    iget v4, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    .line 477
    iget v4, p2, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v4, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 478
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    :goto_6
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    .line 479
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->setLockTaskAuth()V

    .line 398
    return-void

    .end local v1    # "intentFlags":I
    :cond_5
    move v4, v6

    .line 401
    goto/16 :goto_0

    .line 402
    :cond_6
    iget-boolean v4, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-eqz v4, :cond_0

    .line 403
    return-void

    :cond_7
    move-object v4, v7

    .line 429
    goto :goto_1

    .line 432
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    .line 433
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 432
    invoke-direct {v2, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .local v2, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_9

    .line 435
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 436
    .local v3, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 437
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 438
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 441
    iput-object v3, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 442
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 443
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto :goto_2

    .line 445
    .end local v3    # "targetIntent":Landroid/content/Intent;
    :cond_9
    iput-object v7, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    .line 446
    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 447
    new-instance v4, Landroid/content/ComponentName;

    iget-object v7, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 451
    .end local v2    # "targetComponent":Landroid/content/ComponentName;
    :cond_a
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v1

    goto/16 :goto_3

    .restart local v1    # "intentFlags":I
    :cond_b
    move v4, v6

    .line 458
    goto :goto_4

    .line 463
    :cond_c
    const v4, 0x82000

    and-int/2addr v4, v1

    .line 464
    const/high16 v7, 0x80000

    .line 463
    if-ne v4, v7, :cond_e

    .line 468
    iget v4, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v4, :cond_d

    .line 469
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_5

    .line 471
    :cond_d
    iput-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_5

    .line 474
    :cond_e
    iput-boolean v6, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    goto :goto_5

    :cond_f
    move v5, v6

    .line 478
    goto :goto_6
.end method

.method private setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z
    .locals 2
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;
    .param p2, "taskWidth"    # I
    .param p3, "taskHeight"    # I
    .param p4, "screenOrientation"    # I

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_2

    .line 600
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 601
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p2, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskWidth:I

    .line 602
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p3, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->taskHeight:I

    .line 603
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput p4, v0, Landroid/app/ActivityManager$TaskThumbnailInfo;->screenOrientation:I

    .line 604
    if-nez p1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 611
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 613
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, -0x1

    .line 484
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 486
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    .line 483
    :goto_0
    return-void

    .line 488
    :cond_0
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    .line 489
    iput v1, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    goto :goto_0
.end method

.method private subtractNonDecorInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1492
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1493
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractNonDecorInsets(Landroid/graphics/Rect;)V

    .line 1494
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 1495
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 1496
    .local v3, "topInset":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 1497
    .local v2, "rightInset":I
    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 1498
    .local v0, "bottomInset":I
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1491
    return-void

    .line 1496
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .restart local v2    # "rightInset":I
    goto :goto_0

    .line 1497
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    goto :goto_1
.end method

.method private subtractStableInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 6
    .param p1, "inOutBounds"    # Landroid/graphics/Rect;
    .param p2, "inInsetBounds"    # Landroid/graphics/Rect;
    .param p3, "overrideWidth"    # Z
    .param p4, "overrideHeight"    # Z

    .prologue
    .line 1503
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1504
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->subtractStableInsets(Landroid/graphics/Rect;)V

    .line 1505
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, p2, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v5

    .line 1506
    .local v1, "leftInset":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    sub-int v3, v4, v5

    .line 1507
    .local v3, "topInset":I
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    .line 1508
    .local v2, "rightInset":I
    :goto_0
    if-eqz p4, :cond_1

    const/4 v0, 0x0

    .line 1509
    .local v0, "bottomInset":I
    :goto_1
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Rect;->inset(IIII)V

    .line 1502
    return-void

    .line 1507
    .end local v0    # "bottomInset":I
    .end local v2    # "rightInset":I
    :cond_0
    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v5

    .restart local v2    # "rightInset":I
    goto :goto_0

    .line 1508
    :cond_1
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mTmpRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v4, v5

    goto :goto_1
.end method

.method static validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    .line 1611
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1612
    sget-object v0, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received strange task bounds: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1613
    return-object v3

    .line 1615
    :cond_0
    return-object p0
.end method


# virtual methods
.method addActivityAtBottom(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 753
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 752
    return-void
.end method

.method addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v4, 0x0

    .line 762
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p2, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v2, :cond_0

    .line 764
    iget v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 767
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 768
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    .line 769
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    .line 770
    iget v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v2, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 771
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 773
    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->maxRecents:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 774
    invoke-static {}, Landroid/app/ActivityManager;->getMaxAppRecentsLimitStatic()I

    move-result v3

    .line 773
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/TaskRecord;->maxRecents:I

    .line 780
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 782
    .local v0, "size":I
    if-ne p1, v0, :cond_1

    if-lez v0, :cond_1

    .line 783
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 784
    .local v1, "top":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->mTaskOverlay:Z

    if-eqz v2, :cond_1

    .line 787
    add-int/lit8 p1, p1, -0x1

    .line 791
    .end local v1    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 792
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 793
    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 794
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 760
    :cond_2
    return-void

    .line 777
    .end local v0    # "size":I
    :cond_3
    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    iput v2, p2, Lcom/android/server/am/ActivityRecord;->mActivityType:I

    goto :goto_0
.end method

.method addActivityToTop(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/TaskRecord;->addActivityAtIndex(ILcom/android/server/am/ActivityRecord;)V

    .line 756
    return-void
.end method

.method autoRemoveFromRecents()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 826
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method canGoInDockedStack()Z
    .locals 1

    .prologue
    .line 1031
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->inCropWindowsResizeMode()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method canMatchRootAffinity()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1683
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method closeRecentsChain()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 527
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 533
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 534
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 526
    return-void
.end method

.method disposeThumbnail()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskThumbnailInfo;->reset()V

    .line 646
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 647
    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    .line 644
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x7d

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1687
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1688
    const-string/jumbo v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1689
    const-string/jumbo v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1690
    const-string/jumbo v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1691
    const-string/jumbo v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1693
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1697
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1700
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_3

    .line 1701
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1702
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1703
    const-string/jumbo v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1706
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_4

    .line 1707
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1708
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "intent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1710
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1711
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1713
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1715
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "affinityIntent={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    move v4, v2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 1717
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1718
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_6

    .line 1721
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1722
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_7

    .line 1725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "realActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1726
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-eqz v0, :cond_11

    .line 1730
    :cond_8
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1731
    const-string/jumbo v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1732
    const-string/jumbo v0, " numFullscreen="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1733
    const-string/jumbo v0, " taskType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1734
    const-string/jumbo v0, " mTaskToReturnTo="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1736
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-nez v0, :cond_a

    .line 1737
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    if-eq v0, v3, :cond_b

    .line 1738
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1739
    const-string/jumbo v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1740
    const-string/jumbo v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1741
    const-string/jumbo v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    :cond_b
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, v2, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    if-eq v0, v6, :cond_12

    .line 1746
    :cond_c
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1747
    const-string/jumbo v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1748
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1749
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_13

    .line 1750
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1754
    :goto_3
    const-string/jumbo v0, ") nextAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1755
    const-string/jumbo v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1756
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_14

    .line 1757
    const-string/jumbo v0, "null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1761
    :goto_4
    const-string/jumbo v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1764
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    if-eqz v0, :cond_15

    .line 1769
    :goto_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1770
    const-string/jumbo v0, " lastThumbnailFile="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1771
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 1772
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1774
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_f

    .line 1775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "stackId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v0, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1777
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "hasBeenVisible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->hasBeenVisible:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " mResizeMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " isResizeable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " firstActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " lastActiveTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " (inactive for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1686
    return-void

    .line 1695
    :cond_10
    const-string/jumbo v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1728
    :cond_11
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-nez v0, :cond_8

    .line 1729
    iget v0, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    if-eqz v0, :cond_9

    goto/16 :goto_1

    .line 1744
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    if-ne v0, v6, :cond_c

    .line 1745
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v0, :cond_d

    goto/16 :goto_2

    .line 1752
    :cond_13
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1759
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1765
    :cond_15
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1766
    const-string/jumbo v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1767
    const-string/jumbo v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_5
.end method

.method extractOverrideConfig(Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 1565
    new-instance v0, Landroid/content/res/Configuration;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1566
    .local v0, "extracted":Landroid/content/res/Configuration;
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 1567
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 1568
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 1569
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1570
    iget v1, p1, Landroid/content/res/Configuration;->screenLayout:I

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 1571
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 1572
    return-object v0
.end method

.method final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1039
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    .line 1040
    .local v2, "realActivity":Landroid/content/ComponentName;
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1041
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1042
    .local v1, "candidate":Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_1

    .line 1040
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1045
    :cond_1
    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1046
    return-object v1

    .line 1049
    .end local v1    # "candidate":Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method findEffectiveRootIndex()I
    .locals 5

    .prologue
    .line 1110
    const/4 v1, 0x0

    .line 1111
    .local v1, "effectiveNdx":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .line 1112
    .local v3, "topActivityNdx":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_0
    if-gt v0, v3, :cond_2

    .line 1113
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    .line 1114
    .local v2, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_1

    .line 1112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1117
    :cond_1
    move v1, v0

    .line 1118
    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x1000

    if-nez v4, :cond_0

    .line 1122
    .end local v2    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return v1
.end method

.method freeLastThumbnail()V
    .locals 1

    .prologue
    .line 638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    .line 637
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method getInactiveDuration()J
    .locals 4

    .prologue
    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V
    .locals 3
    .param p1, "thumbs"    # Landroid/app/ActivityManager$TaskThumbnail;

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 618
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    .line 619
    iput-object v2, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    .line 620
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    .line 622
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-virtual {v1, v2}, Lcom/android/server/am/RecentTasks;->getImageFromWriteQueue(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    .line 625
    :cond_0
    iget-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailFile:Ljava/io/File;

    .line 628
    const/high16 v2, 0x10000000

    .line 627
    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p1, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_1
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1661
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v2, v2, Lcom/android/server/am/ActivityManagerService;->mLockScreenShown:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1662
    return-object v1

    .line 1665
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v2, :cond_1

    .line 1666
    return-object v1

    .line 1669
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v0, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    .line 1670
    .local v0, "stackId":I
    if-eqz v0, :cond_2

    .line 1671
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 1673
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    :cond_3
    return-object v1

    .line 1672
    :cond_4
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1674
    :cond_5
    invoke-static {v0}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1675
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    return-object v1

    .line 1677
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1
.end method

.method getLaunchStackId()I
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isApplicationTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1650
    const/4 v0, 0x0

    return v0

    .line 1652
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 1653
    const/4 v0, 0x2

    return v0

    .line 1655
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method getRootActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 657
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 658
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 659
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_0
    return-object v1

    .line 664
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public getTaskThumbnailLocked()Landroid/app/ActivityManager$TaskThumbnail;
    .locals 4

    .prologue
    .line 930
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v3, :cond_0

    .line 931
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v3, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 932
    .local v0, "resumedActivity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v3, p0, :cond_0

    .line 933
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityStack;->screenshotActivitiesLocked(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 934
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v2}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z

    .line 937
    .end local v0    # "resumedActivity":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/app/ActivityManager$TaskThumbnail;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskThumbnail;-><init>()V

    .line 938
    .local v1, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->getLastThumbnail(Landroid/app/ActivityManager$TaskThumbnail;)V

    .line 939
    return-object v1
.end method

.method getTaskToReturnTo()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    return v0
.end method

.method getTopActivity()Lcom/android/server/am/ActivityRecord;
    .locals 3

    .prologue
    .line 668
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 669
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 670
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_0

    .line 668
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 673
    :cond_0
    return-object v1

    .line 675
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method inCropWindowsResizeMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method isApplicationTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1014
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isHomeTask()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1006
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLockTaskWhitelistedLocked()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 989
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, "pkg":Ljava/lang/String;
    :cond_0
    if-nez v2, :cond_1

    .line 991
    return v5

    .line 993
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLockTaskPackages:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 994
    .local v1, "packages":[Ljava/lang/String;
    if-nez v1, :cond_2

    .line 995
    return v5

    .line 997
    :cond_2
    array-length v3, v1

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 998
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 999
    const/4 v3, 0x1

    return v3

    .line 997
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1002
    :cond_4
    return v5
.end method

.method isOverHomeStack()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1018
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRecentsTask()Z
    .locals 2

    .prologue
    .line 1010
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isResizeable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mForceResizableActivities:Z

    if-nez v1, :cond_0

    .line 1023
    iget v1, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v1

    .line 1022
    if-eqz v1, :cond_1

    .line 1023
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mTemporarilyUnresizable:Z

    if-eqz v1, :cond_2

    .line 1022
    :cond_1
    :goto_0
    return v0

    .line 1023
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isSameIntentFilter(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 502
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 503
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 948
    iget v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_0

    .line 954
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 949
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    .line 950
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 951
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 952
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_AUTH_WHITELISTED"

    return-object v0

    .line 953
    :pswitch_4
    const-string/jumbo v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 948
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 1
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 746
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    .line 740
    return-void
.end method

.method final performClearTaskAtIndexLocked(I)V
    .locals 7
    .param p1, "activityNdx"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 834
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 835
    .local v6, "numActivities":I
    :goto_0
    if-ge p1, v6, :cond_3

    .line 836
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 837
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 835
    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-nez v0, :cond_2

    .line 842
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeFromHistory()V

    .line 843
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 844
    add-int/lit8 p1, p1, -0x1

    .line 845
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 846
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 847
    const-string/jumbo v4, "clear-task-index"

    move v5, v2

    .line 846
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    add-int/lit8 p1, p1, -0x1

    .line 849
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 833
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    return-void
.end method

.method performClearTaskForReuseLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 864
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 865
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskRecord;->performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 866
    .local v0, "result":Lcom/android/server/am/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 867
    return-object v0
.end method

.method final performClearTaskLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 12
    .param p1, "newR"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "launchFlags"    # I

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 883
    .local v9, "numActivities":I
    add-int/lit8 v8, v9, -0x1

    .local v8, "activityNdx":I
    :goto_0
    if-ltz v8, :cond_8

    .line 884
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 885
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_1

    .line 883
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 888
    :cond_1
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 890
    move-object v11, v1

    .line 892
    .local v11, "ret":Lcom/android/server/am/ActivityRecord;
    add-int/lit8 v8, v8, 0x1

    :goto_1
    if-ge v8, v9, :cond_5

    .line 893
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 894
    .restart local v1    # "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_3

    .line 892
    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 897
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->takeOptionsLocked()Landroid/app/ActivityOptions;

    move-result-object v10

    .line 898
    .local v10, "opts":Landroid/app/ActivityOptions;
    if-eqz v10, :cond_4

    .line 899
    invoke-virtual {v11, v10}, Lcom/android/server/am/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 901
    :cond_4
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 902
    const-string/jumbo v4, "clear-task-stack"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 901
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 903
    add-int/lit8 v8, v8, -0x1

    .line 904
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 911
    .end local v10    # "opts":Landroid/app/ActivityOptions;
    :cond_5
    iget v0, v11, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_7

    .line 912
    const/high16 v0, 0x20000000

    and-int/2addr v0, p2

    if-nez v0, :cond_7

    .line 913
    iget-boolean v0, v11, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_7

    .line 914
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_6

    .line 915
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    .line 916
    const-string/jumbo v6, "clear-task-top"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v11

    .line 915
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;ILandroid/content/Intent;Ljava/lang/String;Z)Z

    .line 918
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 922
    :cond_7
    return-object v11

    .line 926
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v11    # "ret":Lcom/android/server/am/ActivityRecord;
    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method final performClearTaskLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 858
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 859
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 860
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    .line 857
    return-void
.end method

.method removeActivity(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 800
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v1, :cond_0

    .line 802
    iget v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/TaskRecord;->numFullscreen:I

    .line 804
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 805
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 812
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskStackChangedLocked()V

    .line 815
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 816
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mReuseTask:Z

    if-eqz v1, :cond_3

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 818
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->updateEffectiveIntent()V

    .line 819
    return v0
.end method

.method public removeTaskActivitiesLocked()V
    .locals 1

    .prologue
    .line 944
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->performClearTaskAtIndexLocked(I)V

    .line 942
    return-void
.end method

.method removedFromRecents()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 538
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->disposeThumbnail()V

    .line 539
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 540
    iget-boolean v0, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    if-eqz v0, :cond_0

    .line 541
    iput-boolean v1, p0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    .line 542
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/am/ActivityManagerService;->notifyTaskPersisterLocked(Lcom/android/server/am/TaskRecord;Z)V

    .line 537
    :cond_0
    return-void
.end method

.method sanitizeOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "globalConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1591
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v2, :cond_0

    .line 1592
    return-void

    .line 1598
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v1, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 1599
    .local v1, "overrideScreenLayout":I
    iget v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 1600
    .local v0, "newScreenLayout":I
    and-int/lit8 v2, v0, -0x31

    .line 1601
    and-int/lit8 v3, v1, 0x30

    .line 1600
    or-int v0, v2, v3

    .line 1602
    and-int/lit8 v2, v0, -0x10

    .line 1603
    and-int/lit8 v3, v1, 0xf

    .line 1602
    or-int v0, v2, v3

    .line 1604
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iput v0, v2, Landroid/content/res/Configuration;->screenLayout:I

    .line 1607
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v3, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 1589
    return-void
.end method

.method saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 10
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/high16 v9, 0x80000

    const/4 v8, 0x0

    .line 1134
    const-string/jumbo v4, "task_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1135
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1136
    const-string/jumbo v4, "real_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1138
    :cond_0
    const-string/jumbo v4, "real_activity_suspended"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->realActivitySuspended:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 1140
    const-string/jumbo v4, "orig_activity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1146
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 1147
    const-string/jumbo v4, "affinity"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1149
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_0
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1154
    :cond_2
    :goto_1
    const-string/jumbo v4, "root_has_reset"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    const-string/jumbo v4, "auto_remove_recents"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->autoRemoveRecents:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1156
    const-string/jumbo v4, "asked_compat_mode"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->askedCompatMode:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1157
    const-string/jumbo v4, "user_id"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1158
    const-string/jumbo v4, "user_setup_complete"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mUserSetupComplete:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1159
    const-string/jumbo v4, "effective_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->effectiveUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1160
    const-string/jumbo v4, "task_type"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->taskType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1161
    const-string/jumbo v4, "first_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1162
    const-string/jumbo v4, "last_active_time"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1163
    const-string/jumbo v4, "last_time_moved"

    iget-wide v6, p0, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1164
    const-string/jumbo v4, "never_relinquish_identity"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mNeverRelinquishIdentity:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    .line 1166
    const-string/jumbo v4, "last_description"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->lastDescription:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1168
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v4, :cond_4

    .line 1169
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1171
    :cond_4
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastThumbnailInfo:Landroid/app/ActivityManager$TaskThumbnailInfo;

    invoke-virtual {v4, p1}, Landroid/app/ActivityManager$TaskThumbnailInfo;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1172
    const-string/jumbo v4, "task_affiliation_color"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1173
    const-string/jumbo v4, "task_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1174
    const-string/jumbo v4, "prev_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1175
    const-string/jumbo v4, "next_affiliation"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1176
    const-string/jumbo v4, "calling_uid"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1177
    const-string/jumbo v5, "calling_package"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    if-nez v4, :cond_b

    const-string/jumbo v4, ""

    :goto_2
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1178
    const-string/jumbo v4, "resize_mode"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mResizeMode:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1179
    const-string/jumbo v4, "privileged"

    iget-boolean v5, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1180
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_5

    .line 1182
    const-string/jumbo v4, "non_fullscreen_bounds"

    iget-object v5, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 1181
    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1184
    :cond_5
    const-string/jumbo v4, "min_width"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinWidth:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1185
    const-string/jumbo v4, "min_height"

    iget v5, p0, Lcom/android/server/am/TaskRecord;->mMinHeight:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v8, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1187
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v4, :cond_6

    .line 1188
    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1189
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1190
    const-string/jumbo v4, "affinity_intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1193
    :cond_6
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1194
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1195
    const-string/jumbo v4, "intent"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1197
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    .line 1198
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1199
    .local v2, "numActivities":I
    const/4 v1, 0x0

    .local v1, "activityNdx":I
    :goto_3
    if-ge v1, v2, :cond_7

    .line 1200
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1201
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v4, :cond_7

    invoke-virtual {v3}, Lcom/android/server/am/ActivityRecord;->isPersistable()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1202
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getFlags()I

    move-result v4

    and-int/2addr v4, v9

    or-int/lit16 v4, v4, 0x2000

    if-ne v4, v9, :cond_c

    .line 1204
    if-lez v1, :cond_c

    .line 1131
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    return-void

    .line 1149
    .end local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v1    # "activityNdx":I
    .end local v2    # "numActivities":I
    :cond_8
    const-string/jumbo v4, "@"

    goto/16 :goto_0

    .line 1151
    :cond_9
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 1152
    const-string/jumbo v5, "root_affinity"

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->rootAffinity:Ljava/lang/String;

    :goto_4
    invoke-interface {p1, v8, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v4, "@"

    goto :goto_4

    .line 1177
    :cond_b
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    goto/16 :goto_2

    .line 1208
    .restart local v0    # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v1    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_c
    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1209
    invoke-virtual {v3, p1}, Lcom/android/server/am/ActivityRecord;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1210
    const-string/jumbo v4, "activity"

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1199
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method setFrontOfTask()V
    .locals 1

    .prologue
    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V

    .line 704
    return-void
.end method

.method setFrontOfTask(Lcom/android/server/am/ActivityRecord;)V
    .locals 7
    .param p1, "newTop"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 714
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 716
    .local v1, "foundFront":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 717
    .local v2, "numActivities":I
    const/4 v0, 0x0

    .local v0, "activityNdx":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 718
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 719
    .local v3, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v1, :cond_0

    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_2

    .line 720
    :cond_0
    iput-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 717
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 714
    .end local v0    # "activityNdx":I
    .end local v1    # "foundFront":Z
    .end local v2    # "numActivities":I
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "foundFront":Z
    goto :goto_0

    .line 722
    .restart local v0    # "activityNdx":I
    .restart local v2    # "numActivities":I
    .restart local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_2
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 724
    const/4 v1, 0x1

    goto :goto_2

    .line 727
    .end local v3    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez v1, :cond_4

    if-lez v2, :cond_4

    .line 730
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 732
    :cond_4
    if-eqz p1, :cond_5

    .line 733
    iput-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 709
    :cond_5
    return-void
.end method

.method setIntent(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 392
    iget v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mCallingUid:I

    .line 393
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->mCallingPackage:Ljava/lang/String;

    .line 394
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 391
    return-void
.end method

.method setLastThumbnailLocked(Landroid/graphics/Bitmap;)Z
    .locals 6
    .param p1, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    .line 574
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 575
    .local v1, "serviceConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x0

    .line 576
    .local v3, "taskWidth":I
    const/4 v2, 0x0

    .line 577
    .local v2, "taskHeight":I
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 579
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 580
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 590
    :goto_0
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/server/am/TaskRecord;->setLastThumbnailLocked(Landroid/graphics/Bitmap;III)Z

    move-result v4

    return v4

    .line 581
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v4, :cond_1

    .line 583
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 584
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityStack;->getDisplaySize(Landroid/graphics/Point;)V

    .line 585
    iget v3, v0, Landroid/graphics/Point;->x:I

    .line 586
    iget v2, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 588
    .end local v0    # "displaySize":Landroid/graphics/Point;
    :cond_1
    sget-object v4, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "setLastThumbnailLocked() called on Task without stack"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method setLockTaskAuth()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 959
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mPrivileged:Z

    if-nez v2, :cond_1

    .line 960
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-eq v2, v1, :cond_0

    .line 961
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    if-ne v2, v0, :cond_1

    .line 963
    :cond_0
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    .line 965
    :cond_1
    iget v2, p0, Lcom/android/server/am/TaskRecord;->mLockTaskMode:I

    packed-switch v2, :pswitch_data_0

    .line 958
    :goto_0
    return-void

    .line 967
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 968
    const/4 v0, 0x3

    .line 967
    :cond_2
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 972
    :pswitch_1
    iput v3, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 976
    :pswitch_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 980
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isLockTaskWhitelistedLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    :cond_3
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mLockTaskAuth:I

    goto :goto_0

    .line 965
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setNextAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "nextAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 521
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 522
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mNextAffiliateTaskId:I

    .line 520
    return-void

    .line 522
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V
    .locals 1
    .param p1, "prevAffiliate"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    .line 517
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/server/am/TaskRecord;->mPrevAffiliateTaskId:I

    .line 515
    return-void

    .line 517
    :cond_0
    iget v0, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    goto :goto_0
.end method

.method setTaskToAffiliateWith(Lcom/android/server/am/TaskRecord;)V
    .locals 5
    .param p1, "taskToAffiliateWith"    # Lcom/android/server/am/TaskRecord;

    .prologue
    const/4 v4, 0x0

    .line 547
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->closeRecentsChain()V

    .line 548
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 549
    iget v1, p1, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    iput v1, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 551
    :goto_0
    iget-object v1, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    if-eqz v1, :cond_1

    .line 552
    iget-object v0, p1, Lcom/android/server/am/TaskRecord;->mNextAffiliate:Lcom/android/server/am/TaskRecord;

    .line 553
    .local v0, "nextRecents":Lcom/android/server/am/TaskRecord;
    iget v1, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-eq v1, v2, :cond_2

    .line 554
    sget-object v1, Lcom/android/server/am/TaskRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    iget v3, v0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    const-string/jumbo v3, " should be "

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 555
    iget v3, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    .line 554
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v1, v0, Lcom/android/server/am/TaskRecord;->mPrevAffiliate:Lcom/android/server/am/TaskRecord;

    if-ne v1, p1, :cond_0

    .line 557
    invoke-virtual {v0, v4}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 559
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 564
    .end local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 565
    invoke-virtual {p0, p1}, Lcom/android/server/am/TaskRecord;->setPrevAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 566
    invoke-virtual {p0, v4}, Lcom/android/server/am/TaskRecord;->setNextAffiliate(Lcom/android/server/am/TaskRecord;)V

    .line 546
    return-void

    .line 562
    .restart local v0    # "nextRecents":Lcom/android/server/am/TaskRecord;
    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method setTaskToReturnTo(I)V
    .locals 1
    .param p1, "taskToReturnTo"    # I

    .prologue
    .line 507
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 508
    const/4 p1, 0x1

    .line 507
    .end local p1    # "taskToReturnTo":I
    :cond_0
    iput p1, p0, Lcom/android/server/am/TaskRecord;->mTaskToReturnTo:I

    .line 506
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1787
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1788
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1789
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    const-string/jumbo v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    iget v1, p0, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1792
    const-string/jumbo v1, " StackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1793
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v1, v1, Lcom/android/server/am/ActivityStack;->mStackId:I

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1794
    const-string/jumbo v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1795
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1796
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1793
    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    .line 1799
    :cond_1
    const-string/jumbo v1, "TaskRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    iget v1, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1803
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1804
    const-string/jumbo v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1805
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/TaskRecord;->stringName:Ljava/lang/String;

    .line 1816
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1806
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 1807
    const-string/jumbo v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1808
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1809
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_4

    .line 1810
    const-string/jumbo v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1813
    :cond_4
    const-string/jumbo v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 679
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 681
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 682
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    return-object v1

    .line 680
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 687
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v3
.end method

.method topRunningActivityWithStartingWindowLocked()Lcom/android/server/am/ActivityRecord;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 691
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_1

    .line 692
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "activityNdx":I
    :goto_0
    if-ltz v0, :cond_1

    .line 693
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 694
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    iget v2, v1, Lcom/android/server/am/ActivityRecord;->mStartingWindowState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 695
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 694
    if-nez v2, :cond_0

    .line 695
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityStack;->okToShowLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 698
    return-object v1

    .line 692
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 701
    .end local v0    # "activityNdx":I
    .end local v1    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-object v4
.end method

.method touchActiveTime()V
    .locals 4

    .prologue
    .line 380
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    .line 381
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 382
    iget-wide v0, p0, Lcom/android/server/am/TaskRecord;->lastActiveTime:J

    iput-wide v0, p0, Lcom/android/server/am/TaskRecord;->firstActiveTime:J

    .line 379
    :cond_0
    return-void
.end method

.method updateEffectiveIntent()V
    .locals 3

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->findEffectiveRootIndex()I

    move-result v0

    .line 1127
    .local v0, "effectiveRootIndex":I
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1128
    .local v1, "r":Lcom/android/server/am/ActivityRecord;
    invoke-virtual {p0, v1}, Lcom/android/server/am/TaskRecord;->setIntent(Lcom/android/server/am/ActivityRecord;)V

    .line 1125
    return-void
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1443
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method updateOverrideConfiguration(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/content/res/Configuration;
    .locals 9
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "insetBounds"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1455
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1456
    return-object v5

    .line 1458
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1459
    .local v0, "oldConfig":Landroid/content/res/Configuration;
    iget-boolean v1, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 1461
    .local v1, "oldFullscreen":Z
    if-nez p1, :cond_3

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    .line 1462
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v2, :cond_4

    .line 1463
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1464
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1466
    :cond_1
    iput-object v5, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 1467
    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1483
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eq v2, v1, :cond_2

    .line 1484
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v2, p0}, Lcom/android/server/am/ActivityStackSupervisor;->scheduleReportMultiWindowModeChanged(Lcom/android/server/am/TaskRecord;)V

    .line 1487
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    :goto_2
    return-object v2

    :cond_3
    move v2, v4

    .line 1461
    goto :goto_0

    .line 1469
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1470
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lcom/android/server/am/TaskRecord;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;)V

    .line 1471
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-nez v2, :cond_7

    .line 1472
    new-instance v2, Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v2, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    .line 1476
    :goto_3
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    iget v2, v2, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v2}, Landroid/app/ActivityManager$StackId;->persistTaskBounds(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1477
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 1479
    :cond_6
    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    .line 1480
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-eq v2, v7, :cond_8

    move v2, v3

    :goto_4
    iget-object v7, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v8, :cond_9

    .line 1479
    :goto_5
    invoke-direct {p0, v6, p2, v2, v3}, Lcom/android/server/am/TaskRecord;->calculateOverrideConfig(Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/content/res/Configuration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/TaskRecord;->mOverrideConfig:Landroid/content/res/Configuration;

    goto :goto_1

    .line 1474
    :cond_7
    iget-object v2, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/am/TaskRecord;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_8
    move v2, v4

    .line 1480
    goto :goto_4

    :cond_9
    move v3, v4

    goto :goto_5

    :cond_a
    move-object v2, v5

    .line 1487
    goto :goto_2
.end method

.method updateOverrideConfigurationForStack(Lcom/android/server/am/ActivityStack;)V
    .locals 3
    .param p1, "inStack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v2, 0x0

    .line 1621
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    if-ne v0, p1, :cond_0

    .line 1622
    return-void

    .line 1625
    :cond_0
    iget v0, p1, Lcom/android/server/am/ActivityStack;->mStackId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1627
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can not position non-resizeable task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1628
    const-string/jumbo v2, " in stack="

    .line 1627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1630
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 1631
    return-void

    .line 1633
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    .line 1634
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1620
    :goto_0
    return-void

    .line 1636
    :cond_3
    invoke-virtual {p1, p0, v2}, Lcom/android/server/am/ActivityStack;->layoutTaskInStack(Lcom/android/server/am/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;)Z

    goto :goto_0

    .line 1639
    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ActivityStack;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    goto :goto_0
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 1576
    invoke-virtual {p0}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1577
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/server/am/TaskRecord;->updateOverrideConfiguration(Landroid/graphics/Rect;)Landroid/content/res/Configuration;

    .line 1578
    if-eqz v0, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1581
    :cond_0
    return-object v0
.end method

.method updateTaskDescription()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1058
    .local v7, "numActivities":I
    if-nez v7, :cond_5

    const/4 v9, 0x0

    .line 1060
    .local v9, "relinquish":Z
    :goto_0
    const/4 v0, 0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "activityNdx":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1063
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v9, :cond_7

    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-nez v0, :cond_7

    .line 1066
    add-int/lit8 v6, v6, 0x1

    .line 1074
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_0
    if-lez v6, :cond_a

    .line 1079
    const/4 v1, 0x0

    .line 1080
    .local v1, "label":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1081
    .local v3, "iconFilename":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1082
    .local v4, "colorPrimary":I
    const/4 v5, 0x0

    .line 1083
    .local v5, "colorBackground":I
    add-int/lit8 v6, v6, -0x1

    .end local v1    # "label":Ljava/lang/String;
    .end local v3    # "iconFilename":Ljava/lang/String;
    :goto_2
    if-ltz v6, :cond_9

    .line 1084
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1085
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_4

    .line 1086
    if-nez v1, :cond_1

    .line 1087
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 1089
    :cond_1
    if-nez v3, :cond_2

    .line 1090
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    .line 1092
    :cond_2
    if-nez v4, :cond_3

    .line 1093
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v4

    .line 1095
    :cond_3
    if-nez v5, :cond_4

    .line 1096
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v5

    .line 1083
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1059
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    .end local v6    # "activityNdx":I
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "relinquish":Z
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_6

    const/4 v9, 0x1

    .restart local v9    # "relinquish":Z
    goto :goto_0

    .end local v9    # "relinquish":Z
    :cond_6
    const/4 v9, 0x0

    .restart local v9    # "relinquish":Z
    goto :goto_0

    .line 1069
    .restart local v6    # "activityNdx":I
    .restart local v8    # "r":Lcom/android/server/am/ActivityRecord;
    :cond_7
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_8

    .line 1070
    iget-object v0, v8, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v10, 0x80000

    and-int/2addr v0, v10

    if-nez v0, :cond_0

    .line 1061
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1100
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v4    # "colorPrimary":I
    .restart local v5    # "colorBackground":I
    :cond_9
    new-instance v0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v0 .. v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1103
    iget v0, p0, Lcom/android/server/am/TaskRecord;->taskId:I

    iget v2, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskId:I

    if-ne v0, v2, :cond_a

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/TaskRecord;->lastTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/TaskRecord;->mAffiliatedTaskColor:I

    .line 1053
    .end local v4    # "colorPrimary":I
    .end local v5    # "colorBackground":I
    :cond_a
    return-void
.end method

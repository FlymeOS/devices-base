.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$PackageOps;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NONE:I = -0x1

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field public static final _NUM_OP:I = 0x3f

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultMode:[I

.field private static sOpDisableReset:[Z

.field private static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x3f

    const/4 v4, 0x0

    .line 348
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 418
    new-array v1, v5, [Ljava/lang/String;

    .line 419
    const-string/jumbo v2, "android:coarse_location"

    aput-object v2, v1, v6

    .line 420
    const-string/jumbo v2, "android:fine_location"

    aput-object v2, v1, v7

    .line 421
    aput-object v4, v1, v8

    .line 422
    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 423
    const-string/jumbo v2, "android:read_contacts"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 424
    const-string/jumbo v2, "android:write_contacts"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 425
    const-string/jumbo v2, "android:read_call_log"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 426
    const-string/jumbo v2, "android:write_call_log"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 427
    const-string/jumbo v2, "android:read_calendar"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 428
    const-string/jumbo v2, "android:write_calendar"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 429
    const/16 v2, 0xa

    aput-object v4, v1, v2

    .line 430
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 431
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 432
    const-string/jumbo v2, "android:call_phone"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 433
    const-string/jumbo v2, "android:read_sms"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 434
    const/16 v2, 0xf

    aput-object v4, v1, v2

    .line 435
    const-string/jumbo v2, "android:receive_sms"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 436
    const/16 v2, 0x11

    aput-object v4, v1, v2

    .line 437
    const-string/jumbo v2, "android:receive_mms"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 438
    const-string/jumbo v2, "android:receive_wap_push"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 439
    const-string/jumbo v2, "android:send_sms"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 440
    const/16 v2, 0x15

    aput-object v4, v1, v2

    .line 441
    const/16 v2, 0x16

    aput-object v4, v1, v2

    .line 442
    const-string/jumbo v2, "android:write_settings"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 443
    const-string/jumbo v2, "android:system_alert_window"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 444
    const/16 v2, 0x19

    aput-object v4, v1, v2

    .line 445
    const-string/jumbo v2, "android:camera"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 446
    const-string/jumbo v2, "android:record_audio"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 447
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 448
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 449
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 450
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 451
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 452
    const/16 v2, 0x21

    aput-object v4, v1, v2

    .line 453
    const/16 v2, 0x22

    aput-object v4, v1, v2

    .line 454
    const/16 v2, 0x23

    aput-object v4, v1, v2

    .line 455
    const/16 v2, 0x24

    aput-object v4, v1, v2

    .line 456
    const/16 v2, 0x25

    aput-object v4, v1, v2

    .line 457
    const/16 v2, 0x26

    aput-object v4, v1, v2

    .line 458
    const/16 v2, 0x27

    aput-object v4, v1, v2

    .line 459
    const/16 v2, 0x28

    aput-object v4, v1, v2

    .line 460
    const-string/jumbo v2, "android:monitor_location"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 461
    const-string/jumbo v2, "android:monitor_location_high_power"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 462
    const-string/jumbo v2, "android:get_usage_stats"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 463
    const/16 v2, 0x2c

    aput-object v4, v1, v2

    .line 464
    const/16 v2, 0x2d

    aput-object v4, v1, v2

    .line 465
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 466
    const-string/jumbo v2, "android:activate_vpn"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 467
    const/16 v2, 0x30

    aput-object v4, v1, v2

    .line 468
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 469
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 470
    const-string/jumbo v2, "android:read_phone_state"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 471
    const-string/jumbo v2, "android:add_voicemail"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 472
    const-string/jumbo v2, "android:use_sip"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 473
    const/16 v2, 0x36

    aput-object v4, v1, v2

    .line 474
    const-string/jumbo v2, "android:use_fingerprint"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 475
    const-string/jumbo v2, "android:body_sensors"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 476
    const-string/jumbo v2, "android:read_cell_broadcasts"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 477
    const-string/jumbo v2, "android:mock_location"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 478
    const-string/jumbo v2, "android:read_external_storage"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 479
    const-string/jumbo v2, "android:write_external_storage"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 480
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 481
    const-string/jumbo v2, "android:get_accounts"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 418
    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 488
    new-array v1, v5, [Ljava/lang/String;

    .line 489
    const-string/jumbo v2, "COARSE_LOCATION"

    aput-object v2, v1, v6

    .line 490
    const-string/jumbo v2, "FINE_LOCATION"

    aput-object v2, v1, v7

    .line 491
    const-string/jumbo v2, "GPS"

    aput-object v2, v1, v8

    .line 492
    const-string/jumbo v2, "VIBRATE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 493
    const-string/jumbo v2, "READ_CONTACTS"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 494
    const-string/jumbo v2, "WRITE_CONTACTS"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 495
    const-string/jumbo v2, "READ_CALL_LOG"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 496
    const-string/jumbo v2, "WRITE_CALL_LOG"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 497
    const-string/jumbo v2, "READ_CALENDAR"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 498
    const-string/jumbo v2, "WRITE_CALENDAR"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 499
    const-string/jumbo v2, "WIFI_SCAN"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 500
    const-string/jumbo v2, "POST_NOTIFICATION"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 501
    const-string/jumbo v2, "NEIGHBORING_CELLS"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 502
    const-string/jumbo v2, "CALL_PHONE"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 503
    const-string/jumbo v2, "READ_SMS"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 504
    const-string/jumbo v2, "WRITE_SMS"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 505
    const-string/jumbo v2, "RECEIVE_SMS"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 506
    const-string/jumbo v2, "RECEIVE_EMERGECY_SMS"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 507
    const-string/jumbo v2, "RECEIVE_MMS"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 508
    const-string/jumbo v2, "RECEIVE_WAP_PUSH"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 509
    const-string/jumbo v2, "SEND_SMS"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 510
    const-string/jumbo v2, "READ_ICC_SMS"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 511
    const-string/jumbo v2, "WRITE_ICC_SMS"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 512
    const-string/jumbo v2, "WRITE_SETTINGS"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 513
    const-string/jumbo v2, "SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 514
    const-string/jumbo v2, "ACCESS_NOTIFICATIONS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 515
    const-string/jumbo v2, "CAMERA"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 516
    const-string/jumbo v2, "RECORD_AUDIO"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 517
    const-string/jumbo v2, "PLAY_AUDIO"

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 518
    const-string/jumbo v2, "READ_CLIPBOARD"

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 519
    const-string/jumbo v2, "WRITE_CLIPBOARD"

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 520
    const-string/jumbo v2, "TAKE_MEDIA_BUTTONS"

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 521
    const-string/jumbo v2, "TAKE_AUDIO_FOCUS"

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 522
    const-string/jumbo v2, "AUDIO_MASTER_VOLUME"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 523
    const-string/jumbo v2, "AUDIO_VOICE_VOLUME"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 524
    const-string/jumbo v2, "AUDIO_RING_VOLUME"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 525
    const-string/jumbo v2, "AUDIO_MEDIA_VOLUME"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 526
    const-string/jumbo v2, "AUDIO_ALARM_VOLUME"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 527
    const-string/jumbo v2, "AUDIO_NOTIFICATION_VOLUME"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 528
    const-string/jumbo v2, "AUDIO_BLUETOOTH_VOLUME"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 529
    const-string/jumbo v2, "WAKE_LOCK"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 530
    const-string/jumbo v2, "MONITOR_LOCATION"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 531
    const-string/jumbo v2, "MONITOR_HIGH_POWER_LOCATION"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 532
    const-string/jumbo v2, "GET_USAGE_STATS"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 533
    const-string/jumbo v2, "MUTE_MICROPHONE"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 534
    const-string/jumbo v2, "TOAST_WINDOW"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 535
    const-string/jumbo v2, "PROJECT_MEDIA"

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    .line 536
    const-string/jumbo v2, "ACTIVATE_VPN"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 537
    const-string/jumbo v2, "WRITE_WALLPAPER"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 538
    const-string/jumbo v2, "ASSIST_STRUCTURE"

    const/16 v3, 0x31

    aput-object v2, v1, v3

    .line 539
    const-string/jumbo v2, "ASSIST_SCREENSHOT"

    const/16 v3, 0x32

    aput-object v2, v1, v3

    .line 540
    const-string/jumbo v2, "OP_READ_PHONE_STATE"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 541
    const-string/jumbo v2, "ADD_VOICEMAIL"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 542
    const-string/jumbo v2, "USE_SIP"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 543
    const-string/jumbo v2, "PROCESS_OUTGOING_CALLS"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 544
    const-string/jumbo v2, "USE_FINGERPRINT"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 545
    const-string/jumbo v2, "BODY_SENSORS"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 546
    const-string/jumbo v2, "READ_CELL_BROADCASTS"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 547
    const-string/jumbo v2, "MOCK_LOCATION"

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 548
    const-string/jumbo v2, "READ_EXTERNAL_STORAGE"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 549
    const-string/jumbo v2, "WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 550
    const-string/jumbo v2, "TURN_ON_SCREEN"

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    .line 551
    const-string/jumbo v2, "GET_ACCOUNTS"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 488
    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 558
    new-array v1, v5, [Ljava/lang/String;

    .line 559
    const-string/jumbo v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v6

    .line 560
    const-string/jumbo v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v7

    .line 561
    aput-object v4, v1, v8

    .line 562
    const-string/jumbo v2, "android.permission.VIBRATE"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 563
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 564
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 565
    const-string/jumbo v2, "android.permission.READ_CALL_LOG"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 566
    const-string/jumbo v2, "android.permission.WRITE_CALL_LOG"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 567
    const-string/jumbo v2, "android.permission.READ_CALENDAR"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 568
    const-string/jumbo v2, "android.permission.WRITE_CALENDAR"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 569
    const-string/jumbo v2, "android.permission.ACCESS_WIFI_STATE"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 570
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 571
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 572
    const-string/jumbo v2, "android.permission.CALL_PHONE"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 573
    const-string/jumbo v2, "android.permission.READ_SMS"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 574
    const/16 v2, 0xf

    aput-object v4, v1, v2

    .line 575
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 576
    const-string/jumbo v2, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 577
    const-string/jumbo v2, "android.permission.RECEIVE_MMS"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 578
    const-string/jumbo v2, "android.permission.RECEIVE_WAP_PUSH"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 579
    const-string/jumbo v2, "android.permission.SEND_SMS"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 580
    const-string/jumbo v2, "android.permission.READ_SMS"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 581
    const/16 v2, 0x16

    aput-object v4, v1, v2

    .line 582
    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 583
    const-string/jumbo v2, "android.permission.SYSTEM_ALERT_WINDOW"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 584
    const-string/jumbo v2, "android.permission.ACCESS_NOTIFICATIONS"

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 585
    const-string/jumbo v2, "android.permission.CAMERA"

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 586
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 587
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 588
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 589
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 590
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 591
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 592
    const/16 v2, 0x21

    aput-object v4, v1, v2

    .line 593
    const/16 v2, 0x22

    aput-object v4, v1, v2

    .line 594
    const/16 v2, 0x23

    aput-object v4, v1, v2

    .line 595
    const/16 v2, 0x24

    aput-object v4, v1, v2

    .line 596
    const/16 v2, 0x25

    aput-object v4, v1, v2

    .line 597
    const/16 v2, 0x26

    aput-object v4, v1, v2

    .line 598
    const/16 v2, 0x27

    aput-object v4, v1, v2

    .line 599
    const-string/jumbo v2, "android.permission.WAKE_LOCK"

    const/16 v3, 0x28

    aput-object v2, v1, v3

    .line 600
    const/16 v2, 0x29

    aput-object v4, v1, v2

    .line 601
    const/16 v2, 0x2a

    aput-object v4, v1, v2

    .line 602
    const-string/jumbo v2, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 603
    const/16 v2, 0x2c

    aput-object v4, v1, v2

    .line 604
    const/16 v2, 0x2d

    aput-object v4, v1, v2

    .line 605
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 606
    const/16 v2, 0x2f

    aput-object v4, v1, v2

    .line 607
    const/16 v2, 0x30

    aput-object v4, v1, v2

    .line 608
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 609
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 610
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 611
    const-string/jumbo v2, "com.android.voicemail.permission.ADD_VOICEMAIL"

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 612
    const-string/jumbo v2, "android.permission.USE_SIP"

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 613
    const-string/jumbo v2, "android.permission.PROCESS_OUTGOING_CALLS"

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 614
    const-string/jumbo v2, "android.permission.USE_FINGERPRINT"

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 615
    const-string/jumbo v2, "android.permission.BODY_SENSORS"

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 616
    const-string/jumbo v2, "android.permission.READ_CELL_BROADCASTS"

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 617
    const/16 v2, 0x3a

    aput-object v4, v1, v2

    .line 618
    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 619
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 620
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 621
    const-string/jumbo v2, "android.permission.GET_ACCOUNTS"

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 558
    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 629
    new-array v1, v5, [Ljava/lang/String;

    .line 630
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v6

    .line 631
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v7

    .line 632
    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v8

    .line 633
    const/4 v2, 0x3

    aput-object v4, v1, v2

    .line 634
    const/4 v2, 0x4

    aput-object v4, v1, v2

    .line 635
    const/4 v2, 0x5

    aput-object v4, v1, v2

    .line 636
    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 637
    const-string/jumbo v2, "no_outgoing_calls"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 638
    const/16 v2, 0x8

    aput-object v4, v1, v2

    .line 639
    const/16 v2, 0x9

    aput-object v4, v1, v2

    .line 640
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 641
    const/16 v2, 0xb

    aput-object v4, v1, v2

    .line 642
    const/16 v2, 0xc

    aput-object v4, v1, v2

    .line 643
    const/16 v2, 0xd

    aput-object v4, v1, v2

    .line 644
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 645
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 646
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 647
    const/16 v2, 0x11

    aput-object v4, v1, v2

    .line 648
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 649
    const/16 v2, 0x13

    aput-object v4, v1, v2

    .line 650
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 651
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 652
    const-string/jumbo v2, "no_sms"

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 653
    const/16 v2, 0x17

    aput-object v4, v1, v2

    .line 654
    const-string/jumbo v2, "no_create_windows"

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 655
    const/16 v2, 0x19

    aput-object v4, v1, v2

    .line 656
    const/16 v2, 0x1a

    aput-object v4, v1, v2

    .line 657
    const-string/jumbo v2, "no_record_audio"

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 658
    const/16 v2, 0x1c

    aput-object v4, v1, v2

    .line 659
    const/16 v2, 0x1d

    aput-object v4, v1, v2

    .line 660
    const/16 v2, 0x1e

    aput-object v4, v1, v2

    .line 661
    const/16 v2, 0x1f

    aput-object v4, v1, v2

    .line 662
    const/16 v2, 0x20

    aput-object v4, v1, v2

    .line 663
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 664
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 665
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 666
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 667
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 668
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 669
    const-string/jumbo v2, "no_adjust_volume"

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 670
    const/16 v2, 0x28

    aput-object v4, v1, v2

    .line 671
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 672
    const-string/jumbo v2, "no_share_location"

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 673
    const/16 v2, 0x2b

    aput-object v4, v1, v2

    .line 674
    const-string/jumbo v2, "no_unmute_microphone"

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 675
    const-string/jumbo v2, "no_create_windows"

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 676
    const/16 v2, 0x2e

    aput-object v4, v1, v2

    .line 677
    const-string/jumbo v2, "no_config_vpn"

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 678
    const-string/jumbo v2, "no_wallpaper"

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 679
    const/16 v2, 0x31

    aput-object v4, v1, v2

    .line 680
    const/16 v2, 0x32

    aput-object v4, v1, v2

    .line 681
    const/16 v2, 0x33

    aput-object v4, v1, v2

    .line 682
    const/16 v2, 0x34

    aput-object v4, v1, v2

    .line 683
    const/16 v2, 0x35

    aput-object v4, v1, v2

    .line 684
    const/16 v2, 0x36

    aput-object v4, v1, v2

    .line 685
    const/16 v2, 0x37

    aput-object v4, v1, v2

    .line 686
    const/16 v2, 0x38

    aput-object v4, v1, v2

    .line 687
    const/16 v2, 0x39

    aput-object v4, v1, v2

    .line 688
    const/16 v2, 0x3a

    aput-object v4, v1, v2

    .line 689
    const/16 v2, 0x3b

    aput-object v4, v1, v2

    .line 690
    const/16 v2, 0x3c

    aput-object v4, v1, v2

    .line 691
    const/16 v2, 0x3d

    aput-object v4, v1, v2

    .line 692
    const/16 v2, 0x3e

    aput-object v4, v1, v2

    .line 629
    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 699
    new-array v1, v5, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 768
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 841
    new-array v1, v5, [Z

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 910
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 915
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 918
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-eq v1, v5, :cond_0

    .line 919
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 920
    const-string/jumbo v3, " should be "

    .line 919
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_1

    .line 923
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 924
    const-string/jumbo v3, " should be "

    .line 923
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 926
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_2

    .line 927
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 928
    const-string/jumbo v3, " should be "

    .line 927
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 930
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_3

    .line 931
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 932
    const-string/jumbo v3, " should be "

    .line 931
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 934
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_4

    .line 935
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 936
    const-string/jumbo v3, " should be "

    .line 935
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 938
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_5

    .line 939
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 940
    const-string/jumbo v3, " should be "

    .line 939
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 942
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_6

    .line 943
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 944
    const-string/jumbo v3, " should be "

    .line 943
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 946
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_7

    .line 947
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 948
    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    .line 947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 948
    const-string/jumbo v3, " should be "

    .line 947
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 950
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_9

    .line 951
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    .line 952
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 955
    :cond_9
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_b

    .line 956
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    .line 957
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 955
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 49
    :cond_b
    return-void

    .line 348
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
    .end array-data

    .line 699
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 768
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 841
    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 74
    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1215
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1216
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1214
    return-void
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 3
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1678
    const-class v2, Landroid/app/AppOpsManager;

    monitor-enter v2

    .line 1679
    :try_start_0
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 1680
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1683
    :cond_0
    :try_start_1
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v1}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    sput-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1687
    :goto_0
    :try_start_2
    sget-object v1, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    return-object v1

    .line 1678
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 1684
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1022
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1038
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1030
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 975
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string/jumbo v0, "NONE"

    return-object v0

    .line 976
    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 996
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1004
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 967
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1302
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1303
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1304
    return-object v2

    .line 1306
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1012
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1013
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 983
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 984
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 985
    return v0

    .line 983
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 988
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1374
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1375
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1376
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1378
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1565
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v1

    .line 1566
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1567
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1572
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1569
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1582
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1583
    :catch_0
    move-exception v0

    .line 1585
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1519
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v1

    .line 1520
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1521
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1524
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1526
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1523
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1398
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1536
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1537
    :catch_0
    move-exception v0

    .line 1539
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1406
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1550
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1551
    new-instance v1, Ljava/lang/SecurityException;

    .line 1552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1551
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1554
    :catch_0
    move-exception v0

    .line 1555
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1548
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1754
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1753
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1747
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1745
    :goto_0
    return-void

    .line 1748
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1497
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1496
    return-void
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1243
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1244
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 2
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1227
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 1228
    :catch_0
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1673
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1605
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v1

    .line 1606
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1607
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1610
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1609
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1424
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1665
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1666
    :catch_0
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1432
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1634
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    .line 1635
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1636
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1637
    const-string/jumbo v3, " from uid "

    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1637
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1637
    const-string/jumbo v3, " or calling package "

    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1638
    const-string/jumbo v3, " from uid "

    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1638
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1639
    const-string/jumbo v3, " not allowed to perform "

    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1639
    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 1636
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1641
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1451
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1651
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1651
    invoke-interface {v1, p1, v2, v3, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1653
    :catch_0
    move-exception v0

    .line 1655
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1459
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 4

    .prologue
    .line 1288
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1286
    :goto_0
    return-void

    .line 1289
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1260
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1279
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1280
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 1281
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1252
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    :goto_0
    return-void

    .line 1253
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 1735
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1710
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v3, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v3}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v1

    .line 1711
    .local v1, "mode":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1712
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1715
    .end local v1    # "mode":I
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    return v2

    .line 1714
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "mode":I
    :cond_0
    return v1
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1479
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1727
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1728
    :catch_0
    move-exception v0

    .line 1730
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    return v1
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1487
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1328
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1329
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 1330
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 1331
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1341
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1344
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v3

    .line 1327
    return-void

    .line 1328
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1345
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1317
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1316
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 4
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1355
    iget-object v3, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1356
    :try_start_0
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1357
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 1359
    :try_start_1
    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v2, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v3

    .line 1354
    return-void

    .line 1355
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1360
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.class public Lcom/android/server/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final AUTO_BRIGHTNESS_ADJ:I = 0x88b8

.field public static final BACKUP_AGENT_FAILURE:I = 0xb07

.field public static final BACKUP_DATA_CHANGED:I = 0xb04

.field public static final BACKUP_INITIALIZE:I = 0xb0b

.field public static final BACKUP_PACKAGE:I = 0xb08

.field public static final BACKUP_RESET:I = 0xb0a

.field public static final BACKUP_START:I = 0xb05

.field public static final BACKUP_SUCCESS:I = 0xb09

.field public static final BACKUP_TRANSPORT_FAILURE:I = 0xb06

.field public static final BACKUP_TRANSPORT_LIFECYCLE:I = 0xb22

.field public static final BATTERY_DISCHARGE:I = 0xaaa

.field public static final BATTERY_LEVEL:I = 0xaa2

.field public static final BATTERY_STATUS:I = 0xaa3

.field public static final BOOT_PROGRESS_PMS_DATA_SCAN_START:I = 0xc08

.field public static final BOOT_PROGRESS_PMS_READY:I = 0xc1c

.field public static final BOOT_PROGRESS_PMS_SCAN_END:I = 0xc12

.field public static final BOOT_PROGRESS_PMS_START:I = 0xbf4

.field public static final BOOT_PROGRESS_PMS_SYSTEM_SCAN_START:I = 0xbfe

.field public static final BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field public static final CACHE_FILE_DELETED:I = 0xabc

.field public static final CAMERA_GESTURE_TRIGGERED:I = 0x9ca4

.field public static final CONFIG_INSTALL_FAILED:I = 0xc864

.field public static final CONNECTIVITY_STATE_CHANGED:I = 0xc364

.field public static final DEVICE_IDLE:I = 0x84d0

.field public static final DEVICE_IDLE_OFF_COMPLETE:I = 0x84d8

.field public static final DEVICE_IDLE_OFF_PHASE:I = 0x84d7

.field public static final DEVICE_IDLE_OFF_START:I = 0x84d6

.field public static final DEVICE_IDLE_ON_COMPLETE:I = 0x84d5

.field public static final DEVICE_IDLE_ON_PHASE:I = 0x84d4

.field public static final DEVICE_IDLE_ON_START:I = 0x84d3

.field public static final DEVICE_IDLE_STEP:I = 0x84d1

.field public static final DEVICE_IDLE_WAKE_FROM_IDLE:I = 0x84d2

.field public static final FREE_STORAGE_CHANGED:I = 0xab8

.field public static final FREE_STORAGE_LEFT:I = 0xaba

.field public static final FSTRIM_FINISH:I = 0xac4

.field public static final FSTRIM_START:I = 0xac3

.field public static final FULL_BACKUP_AGENT_FAILURE:I = 0xb19

.field public static final FULL_BACKUP_PACKAGE:I = 0xb18

.field public static final FULL_BACKUP_SUCCESS:I = 0xb1b

.field public static final FULL_BACKUP_TRANSPORT_FAILURE:I = 0xb1a

.field public static final FULL_RESTORE_PACKAGE:I = 0xb1c

.field public static final IDLE_MAINTENANCE_WINDOW_FINISH:I = 0xc92d

.field public static final IDLE_MAINTENANCE_WINDOW_START:I = 0xc92c

.field public static final IFW_INTENT_MATCHED:I = 0xc8c8

.field public static final IMF_FORCE_RECONNECT_IME:I = 0x7d00

.field public static final LOCKDOWN_VPN_CONNECTED:I = 0xc801

.field public static final LOCKDOWN_VPN_CONNECTING:I = 0xc800

.field public static final LOCKDOWN_VPN_ERROR:I = 0xc802

.field public static final LOW_STORAGE:I = 0xab9

.field public static final NETSTATS_MOBILE_SAMPLE:I = 0xc79c

.field public static final NETSTATS_WIFI_SAMPLE:I = 0xc79d

.field public static final NOTIFICATION_ACTION_CLICKED:I = 0x6b81

.field public static final NOTIFICATION_ALERT:I = 0x6b8c

.field public static final NOTIFICATION_CANCEL:I = 0xabf

.field public static final NOTIFICATION_CANCELED:I = 0x6b8a

.field public static final NOTIFICATION_CANCEL_ALL:I = 0xac0

.field public static final NOTIFICATION_CLICKED:I = 0x6b80

.field public static final NOTIFICATION_ENQUEUE:I = 0xabe

.field public static final NOTIFICATION_EXPANSION:I = 0x6b77

.field public static final NOTIFICATION_PANEL_HIDDEN:I = 0x6b6d

.field public static final NOTIFICATION_PANEL_REVEALED:I = 0x6b6c

.field public static final NOTIFICATION_VISIBILITY:I = 0x6b8b

.field public static final NOTIFICATION_VISIBILITY_CHANGED:I = 0x6b76

.field public static final PM_CRITICAL_INFO:I = 0xc30

.field public static final POWER_PARTIAL_WAKE_STATE:I = 0xaa9

.field public static final POWER_SCREEN_BROADCAST_DONE:I = 0xaa6

.field public static final POWER_SCREEN_BROADCAST_SEND:I = 0xaa5

.field public static final POWER_SCREEN_BROADCAST_STOP:I = 0xaa7

.field public static final POWER_SCREEN_STATE:I = 0xaa8

.field public static final POWER_SLEEP_REQUESTED:I = 0xaa4

.field public static final POWER_SOFT_SLEEP_REQUESTED:I = 0xaab

.field public static final RESTORE_AGENT_FAILURE:I = 0xb10

.field public static final RESTORE_PACKAGE:I = 0xb11

.field public static final RESTORE_START:I = 0xb0e

.field public static final RESTORE_SUCCESS:I = 0xb12

.field public static final RESTORE_TRANSPORT_FAILURE:I = 0xb0f

.field public static final STREAM_DEVICES_CHANGED:I = 0x9c41

.field public static final UNKNOWN_SOURCES_ENABLED:I = 0xc26

.field public static final VOLUME_CHANGED:I = 0x9c40

.field public static final WATCHDOG:I = 0xaf2

.field public static final WATCHDOG_HARD_RESET:I = 0xaf5

.field public static final WATCHDOG_MEMINFO:I = 0xaf9

.field public static final WATCHDOG_PROC_PSS:I = 0xaf3

.field public static final WATCHDOG_PROC_STATS:I = 0xaf7

.field public static final WATCHDOG_PSS_STATS:I = 0xaf6

.field public static final WATCHDOG_REQUESTED_REBOOT:I = 0xafb

.field public static final WATCHDOG_SCHEDULED_REBOOT:I = 0xaf8

.field public static final WATCHDOG_SOFT_RESET:I = 0xaf4

.field public static final WATCHDOG_VMSTAT:I = 0xafa

.field public static final WM_HOME_STACK_MOVED:I = 0x791d

.field public static final WM_NO_SURFACE_MEMORY:I = 0x7918

.field public static final WM_STACK_CREATED:I = 0x791c

.field public static final WM_STACK_REMOVED:I = 0x791e

.field public static final WM_TASK_CREATED:I = 0x7919

.field public static final WM_TASK_MOVED:I = 0x791a

.field public static final WM_TASK_REMOVED:I = 0x791b

.field public static final WP_WALLPAPER_CRASHED:I = 0x80e8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeAutoBrightnessAdj(FFFFFFFF)V
    .locals 3
    .param p0, "oldAdj"    # F
    .param p1, "oldLux"    # F
    .param p2, "oldBrightness"    # F
    .param p3, "oldGamma"    # F
    .param p4, "newAdj"    # F
    .param p5, "newLux"    # F
    .param p6, "newBrightness"    # F
    .param p7, "newGamma"    # F

    .prologue
    .line 629
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x88b8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 628
    return-void
.end method

.method public static writeBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 461
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0xb07

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 460
    return-void
.end method

.method public static writeBackupDataChanged(Ljava/lang/String;)V
    .locals 1
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 449
    const/16 v0, 0xb04

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 448
    return-void
.end method

.method public static writeBackupInitialize()V
    .locals 2

    .prologue
    .line 477
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xb0b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 476
    return-void
.end method

.method public static writeBackupPackage(Ljava/lang/String;I)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 465
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb08

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 464
    return-void
.end method

.method public static writeBackupReset(Ljava/lang/String;)V
    .locals 1
    .param p0, "transport"    # Ljava/lang/String;

    .prologue
    .line 473
    const/16 v0, 0xb0a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 472
    return-void
.end method

.method public static writeBackupStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "transport"    # Ljava/lang/String;

    .prologue
    .line 453
    const/16 v0, 0xb05

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 452
    return-void
.end method

.method public static writeBackupSuccess(II)V
    .locals 3
    .param p0, "packages"    # I
    .param p1, "time"    # I

    .prologue
    .line 469
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb09

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 468
    return-void
.end method

.method public static writeBackupTransportFailure(Ljava/lang/String;)V
    .locals 1
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 457
    const/16 v0, 0xb06

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 456
    return-void
.end method

.method public static writeBackupTransportLifecycle(Ljava/lang/String;I)V
    .locals 3
    .param p0, "transport"    # Ljava/lang/String;
    .param p1, "bound"    # I

    .prologue
    .line 521
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb22

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 520
    return-void
.end method

.method public static writeBatteryDischarge(JII)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "minlevel"    # I
    .param p3, "maxlevel"    # I

    .prologue
    .line 313
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xaaa

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 312
    return-void
.end method

.method public static writeBatteryLevel(III)V
    .locals 3
    .param p0, "level"    # I
    .param p1, "voltage"    # I
    .param p2, "temperature"    # I

    .prologue
    .line 305
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xaa2

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 304
    return-void
.end method

.method public static writeBatteryStatus(IIIILjava/lang/String;)V
    .locals 3
    .param p0, "status"    # I
    .param p1, "health"    # I
    .param p2, "present"    # I
    .param p3, "plugged"    # I
    .param p4, "technology"    # Ljava/lang/String;

    .prologue
    .line 309
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0xaa3

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 308
    return-void
.end method

.method public static writeBootProgressPmsDataScanStart(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 537
    const/16 v0, 0xc08

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 536
    return-void
.end method

.method public static writeBootProgressPmsReady(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 545
    const/16 v0, 0xc1c

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 544
    return-void
.end method

.method public static writeBootProgressPmsScanEnd(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 541
    const/16 v0, 0xc12

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 540
    return-void
.end method

.method public static writeBootProgressPmsStart(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 529
    const/16 v0, 0xbf4

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 528
    return-void
.end method

.method public static writeBootProgressPmsSystemScanStart(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 533
    const/16 v0, 0xbfe

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 532
    return-void
.end method

.method public static writeBootProgressSystemRun(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 525
    const/16 v0, 0xbc2

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 524
    return-void
.end method

.method public static writeCacheFileDeleted(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 357
    const/16 v0, 0xabc

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 356
    return-void
.end method

.method public static writeCameraGestureTriggered(JJJI)V
    .locals 4
    .param p0, "gestureOnTime"    # J
    .param p2, "sensor1OnTime"    # J
    .param p4, "sensor2OnTime"    # J
    .param p6, "eventExtra"    # I

    .prologue
    .line 689
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x9ca4

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 688
    return-void
.end method

.method public static writeConfigInstallFailed(Ljava/lang/String;)V
    .locals 1
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    .line 657
    const v0, 0xc864

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 656
    return-void
.end method

.method public static writeConnectivityStateChanged(III)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "subtype"    # I
    .param p2, "state"    # I

    .prologue
    .line 633
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0xc364

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 632
    return-void
.end method

.method public static writeDeviceIdle(ILjava/lang/String;)V
    .locals 3
    .param p0, "state"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 593
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x84d0

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 592
    return-void
.end method

.method public static writeDeviceIdleOffComplete()V
    .locals 2

    .prologue
    .line 625
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x84d8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 624
    return-void
.end method

.method public static writeDeviceIdleOffPhase(Ljava/lang/String;)V
    .locals 1
    .param p0, "what"    # Ljava/lang/String;

    .prologue
    .line 621
    const v0, 0x84d7

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 620
    return-void
.end method

.method public static writeDeviceIdleOffStart(Ljava/lang/String;)V
    .locals 1
    .param p0, "reason"    # Ljava/lang/String;

    .prologue
    .line 617
    const v0, 0x84d6

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 616
    return-void
.end method

.method public static writeDeviceIdleOnComplete()V
    .locals 2

    .prologue
    .line 613
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x84d5

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 612
    return-void
.end method

.method public static writeDeviceIdleOnPhase(Ljava/lang/String;)V
    .locals 1
    .param p0, "what"    # Ljava/lang/String;

    .prologue
    .line 609
    const v0, 0x84d4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 608
    return-void
.end method

.method public static writeDeviceIdleOnStart()V
    .locals 2

    .prologue
    .line 605
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x84d3

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 604
    return-void
.end method

.method public static writeDeviceIdleStep()V
    .locals 2

    .prologue
    .line 597
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x84d1

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 596
    return-void
.end method

.method public static writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V
    .locals 3
    .param p0, "isIdle"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 601
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x84d2

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 600
    return-void
.end method

.method public static writeFreeStorageChanged(J)V
    .locals 2
    .param p0, "data"    # J

    .prologue
    .line 345
    const/16 v0, 0xab8

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 344
    return-void
.end method

.method public static writeFreeStorageLeft(JJJ)V
    .locals 4
    .param p0, "data"    # J
    .param p2, "system"    # J
    .param p4, "cache"    # J

    .prologue
    .line 353
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xaba

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 352
    return-void
.end method

.method public static writeFstrimFinish(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 677
    const/16 v0, 0xac4

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 676
    return-void
.end method

.method public static writeFstrimStart(J)V
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 673
    const/16 v0, 0xac3

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 672
    return-void
.end method

.method public static writeFullBackupAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 505
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0xb19

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 504
    return-void
.end method

.method public static writeFullBackupPackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 501
    const/16 v0, 0xb18

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 500
    return-void
.end method

.method public static writeFullBackupSuccess(Ljava/lang/String;)V
    .locals 1
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 513
    const/16 v0, 0xb1b

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 512
    return-void
.end method

.method public static writeFullBackupTransportFailure()V
    .locals 2

    .prologue
    .line 509
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xb1a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 508
    return-void
.end method

.method public static writeFullRestorePackage(Ljava/lang/String;)V
    .locals 1
    .param p0, "package_"    # Ljava/lang/String;

    .prologue
    .line 517
    const/16 v0, 0xb1c

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 516
    return-void
.end method

.method public static writeIdleMaintenanceWindowFinish(JJII)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "lastuseractivity"    # J
    .param p4, "batterylevel"    # I
    .param p5, "batterycharging"    # I

    .prologue
    .line 669
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xc92d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 668
    return-void
.end method

.method public static writeIdleMaintenanceWindowStart(JJII)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "lastuseractivity"    # J
    .param p4, "batterylevel"    # I
    .param p5, "batterycharging"    # I

    .prologue
    .line 665
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0xc92c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 664
    return-void
.end method

.method public static writeIfwIntentMatched(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p0, "intentType"    # I
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "callerUid"    # I
    .param p3, "callerPkgCount"    # I
    .param p4, "callerPkgs"    # Ljava/lang/String;
    .param p5, "action"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "uri"    # Ljava/lang/String;
    .param p8, "flags"    # I

    .prologue
    .line 661
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/4 v1, 0x5

    aput-object p5, v0, v1

    const/4 v1, 0x6

    aput-object p6, v0, v1

    const/4 v1, 0x7

    aput-object p7, v0, v1

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const v1, 0xc8c8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 660
    return-void
.end method

.method public static writeImfForceReconnectIme([Ljava/lang/Object;JI)V
    .locals 3
    .param p0, "ime"    # [Ljava/lang/Object;
    .param p1, "timeSinceConnect"    # J
    .param p3, "showing"    # I

    .prologue
    .line 585
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x7d00

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 584
    return-void
.end method

.method public static writeLockdownVpnConnected(I)V
    .locals 1
    .param p0, "egressNet"    # I

    .prologue
    .line 649
    const v0, 0xc801

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 648
    return-void
.end method

.method public static writeLockdownVpnConnecting(I)V
    .locals 1
    .param p0, "egressNet"    # I

    .prologue
    .line 645
    const v0, 0xc800

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 644
    return-void
.end method

.method public static writeLockdownVpnError(I)V
    .locals 1
    .param p0, "egressNet"    # I

    .prologue
    .line 653
    const v0, 0xc802

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 652
    return-void
.end method

.method public static writeLowStorage(J)V
    .locals 2
    .param p0, "data"    # J

    .prologue
    .line 349
    const/16 v0, 0xab9

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 348
    return-void
.end method

.method public static writeNetstatsMobileSample(JJJJJJJJJJJJJ)V
    .locals 4
    .param p0, "devRxBytes"    # J
    .param p2, "devTxBytes"    # J
    .param p4, "devRxPkts"    # J
    .param p6, "devTxPkts"    # J
    .param p8, "xtRxBytes"    # J
    .param p10, "xtTxBytes"    # J
    .param p12, "xtRxPkts"    # J
    .param p14, "xtTxPkts"    # J
    .param p16, "uidRxBytes"    # J
    .param p18, "uidTxBytes"    # J
    .param p20, "uidRxPkts"    # J
    .param p22, "uidTxPkts"    # J
    .param p24, "trustedTime"    # J

    .prologue
    .line 637
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const v1, 0xc79c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 636
    return-void
.end method

.method public static writeNetstatsWifiSample(JJJJJJJJJJJJJ)V
    .locals 4
    .param p0, "devRxBytes"    # J
    .param p2, "devTxBytes"    # J
    .param p4, "devRxPkts"    # J
    .param p6, "devTxPkts"    # J
    .param p8, "xtRxBytes"    # J
    .param p10, "xtTxBytes"    # J
    .param p12, "xtRxPkts"    # J
    .param p14, "xtTxPkts"    # J
    .param p16, "uidRxBytes"    # J
    .param p18, "uidTxBytes"    # J
    .param p20, "uidRxPkts"    # J
    .param p22, "uidTxPkts"    # J
    .param p24, "trustedTime"    # J

    .prologue
    .line 641
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p10, p11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static/range {p12 .. p13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static/range {p14 .. p15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static/range {p16 .. p17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static/range {p18 .. p19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static/range {p20 .. p21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static/range {p22 .. p23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    invoke-static/range {p24 .. p25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const v1, 0xc79d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 640
    return-void
.end method

.method public static writeNotificationActionClicked(Ljava/lang/String;IIII)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "actionIndex"    # I
    .param p2, "lifespan"    # I
    .param p3, "freshness"    # I
    .param p4, "exposure"    # I

    .prologue
    .line 393
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x6b81

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 392
    return-void
.end method

.method public static writeNotificationAlert(Ljava/lang/String;III)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "buzz"    # I
    .param p2, "beep"    # I
    .param p3, "blink"    # I

    .prologue
    .line 405
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x6b8c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 404
    return-void
.end method

.method public static writeNotificationCancel(IILjava/lang/String;ILjava/lang/String;IIIILjava/lang/String;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "userid"    # I
    .param p6, "requiredFlags"    # I
    .param p7, "forbiddenFlags"    # I
    .param p8, "reason"    # I
    .param p9, "listener"    # Ljava/lang/String;

    .prologue
    .line 365
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    aput-object p9, v0, v1

    const/16 v1, 0xabf

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 364
    return-void
.end method

.method public static writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "userid"    # I
    .param p4, "requiredFlags"    # I
    .param p5, "forbiddenFlags"    # I
    .param p6, "reason"    # I
    .param p7, "listener"    # Ljava/lang/String;

    .prologue
    .line 369
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aput-object p7, v0, v1

    const/16 v1, 0xac0

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 368
    return-void
.end method

.method public static writeNotificationCanceled(Ljava/lang/String;IIII)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "reason"    # I
    .param p2, "lifespan"    # I
    .param p3, "freshness"    # I
    .param p4, "exposure"    # I

    .prologue
    .line 397
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0x6b8a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 396
    return-void
.end method

.method public static writeNotificationClicked(Ljava/lang/String;III)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "lifespan"    # I
    .param p2, "freshness"    # I
    .param p3, "exposure"    # I

    .prologue
    .line 389
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x6b80

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 388
    return-void
.end method

.method public static writeNotificationEnqueue(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "userid"    # I
    .param p6, "notification"    # Ljava/lang/String;
    .param p7, "status"    # I

    .prologue
    .line 361
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    aput-object p6, v0, v1

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v1, 0xabe

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 360
    return-void
.end method

.method public static writeNotificationExpansion(Ljava/lang/String;IIIII)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "userAction"    # I
    .param p2, "expanded"    # I
    .param p3, "lifespan"    # I
    .param p4, "freshness"    # I
    .param p5, "exposure"    # I

    .prologue
    .line 385
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x6b77

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 384
    return-void
.end method

.method public static writeNotificationPanelHidden()V
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0x6b6d

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 376
    return-void
.end method

.method public static writeNotificationPanelRevealed(I)V
    .locals 1
    .param p0, "items"    # I

    .prologue
    .line 373
    const/16 v0, 0x6b6c

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 372
    return-void
.end method

.method public static writeNotificationVisibility(Ljava/lang/String;IIIII)V
    .locals 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "visibile"    # I
    .param p2, "lifespan"    # I
    .param p3, "freshness"    # I
    .param p4, "exposure"    # I
    .param p5, "rank"    # I

    .prologue
    .line 401
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0x6b8b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 400
    return-void
.end method

.method public static writeNotificationVisibilityChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "newlyvisiblekeys"    # Ljava/lang/String;
    .param p1, "nolongervisiblekeys"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x6b76

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 380
    return-void
.end method

.method public static writePmCriticalInfo(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 553
    const/16 v0, 0xc30

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 552
    return-void
.end method

.method public static writePowerPartialWakeState(ILjava/lang/String;)V
    .locals 3
    .param p0, "releasedoracquired"    # I
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 337
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0xaa9

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 336
    return-void
.end method

.method public static writePowerScreenBroadcastDone(IJI)V
    .locals 3
    .param p0, "on"    # I
    .param p1, "broadcastduration"    # J
    .param p3, "wakelockcount"    # I

    .prologue
    .line 325
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xaa6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 324
    return-void
.end method

.method public static writePowerScreenBroadcastSend(I)V
    .locals 1
    .param p0, "wakelockcount"    # I

    .prologue
    .line 321
    const/16 v0, 0xaa5

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 320
    return-void
.end method

.method public static writePowerScreenBroadcastStop(II)V
    .locals 3
    .param p0, "which"    # I
    .param p1, "wakelockcount"    # I

    .prologue
    .line 329
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xaa7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 328
    return-void
.end method

.method public static writePowerScreenState(IIJI)V
    .locals 4
    .param p0, "offoron"    # I
    .param p1, "becauseofuser"    # I
    .param p2, "totaltouchdowntime"    # J
    .param p4, "touchcycles"    # I

    .prologue
    .line 333
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xaa8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 332
    return-void
.end method

.method public static writePowerSleepRequested(I)V
    .locals 1
    .param p0, "wakelockscleared"    # I

    .prologue
    .line 317
    const/16 v0, 0xaa4

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 316
    return-void
.end method

.method public static writePowerSoftSleepRequested(J)V
    .locals 2
    .param p0, "savedwaketimems"    # J

    .prologue
    .line 341
    const/16 v0, 0xaab

    invoke-static {v0, p0, p1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 340
    return-void
.end method

.method public static writeRestoreAgentFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 489
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0xb10

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 488
    return-void
.end method

.method public static writeRestorePackage(Ljava/lang/String;I)V
    .locals 3
    .param p0, "package_"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    .line 493
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb11

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 492
    return-void
.end method

.method public static writeRestoreStart(Ljava/lang/String;J)V
    .locals 3
    .param p0, "transport"    # Ljava/lang/String;
    .param p1, "source"    # J

    .prologue
    .line 481
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb0e

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 480
    return-void
.end method

.method public static writeRestoreSuccess(II)V
    .locals 3
    .param p0, "packages"    # I
    .param p1, "time"    # I

    .prologue
    .line 497
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0xb12

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 496
    return-void
.end method

.method public static writeRestoreTransportFailure()V
    .locals 2

    .prologue
    .line 485
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v1, 0xb0f

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 484
    return-void
.end method

.method public static writeStreamDevicesChanged(III)V
    .locals 3
    .param p0, "stream"    # I
    .param p1, "prevDevices"    # I
    .param p2, "devices"    # I

    .prologue
    .line 685
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x9c41

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 684
    return-void
.end method

.method public static writeUnknownSourcesEnabled(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 549
    const/16 v0, 0xc26

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 548
    return-void
.end method

.method public static writeVolumeChanged(IIIILjava/lang/String;)V
    .locals 3
    .param p0, "stream"    # I
    .param p1, "prevLevel"    # I
    .param p2, "level"    # I
    .param p3, "maxLevel"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .prologue
    .line 681
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const v1, 0x9c40

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 680
    return-void
.end method

.method public static writeWatchdog(Ljava/lang/String;)V
    .locals 1
    .param p0, "service"    # Ljava/lang/String;

    .prologue
    .line 409
    const/16 v0, 0xaf2

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 408
    return-void
.end method

.method public static writeWatchdogHardReset(Ljava/lang/String;III)V
    .locals 3
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "maxpss"    # I
    .param p3, "pss"    # I

    .prologue
    .line 421
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0xaf5

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 420
    return-void
.end method

.method public static writeWatchdogMeminfo(IIIIIIIIIII)V
    .locals 3
    .param p0, "memfree"    # I
    .param p1, "buffers"    # I
    .param p2, "cached"    # I
    .param p3, "active"    # I
    .param p4, "inactive"    # I
    .param p5, "anonpages"    # I
    .param p6, "mapped"    # I
    .param p7, "slab"    # I
    .param p8, "sreclaimable"    # I
    .param p9, "sunreclaim"    # I
    .param p10, "pagetables"    # I

    .prologue
    .line 437
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xaf9

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 436
    return-void
.end method

.method public static writeWatchdogProcPss(Ljava/lang/String;II)V
    .locals 3
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "pss"    # I

    .prologue
    .line 413
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0xaf3

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 412
    return-void
.end method

.method public static writeWatchdogProcStats(IIIII)V
    .locals 3
    .param p0, "deathsinone"    # I
    .param p1, "deathsintwo"    # I
    .param p2, "deathsinthree"    # I
    .param p3, "deathsinfour"    # I
    .param p4, "deathsinfive"    # I

    .prologue
    .line 429
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/16 v1, 0xaf7

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 428
    return-void
.end method

.method public static writeWatchdogPssStats(IIIIIIIIIII)V
    .locals 3
    .param p0, "emptypss"    # I
    .param p1, "emptycount"    # I
    .param p2, "backgroundpss"    # I
    .param p3, "backgroundcount"    # I
    .param p4, "servicepss"    # I
    .param p5, "servicecount"    # I
    .param p6, "visiblepss"    # I
    .param p7, "visiblecount"    # I
    .param p8, "foregroundpss"    # I
    .param p9, "foregroundcount"    # I
    .param p10, "nopsscount"    # I

    .prologue
    .line 425
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-static {p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xaf6

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 424
    return-void
.end method

.method public static writeWatchdogRequestedReboot(IIIIIII)V
    .locals 3
    .param p0, "nowait"    # I
    .param p1, "scheduleinterval"    # I
    .param p2, "recheckinterval"    # I
    .param p3, "starttime"    # I
    .param p4, "window"    # I
    .param p5, "minscreenoff"    # I
    .param p6, "minnextalarm"    # I

    .prologue
    .line 445
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/16 v1, 0xafb

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 444
    return-void
.end method

.method public static writeWatchdogScheduledReboot(JIIILjava/lang/String;)V
    .locals 4
    .param p0, "now"    # J
    .param p2, "interval"    # I
    .param p3, "starttime"    # I
    .param p4, "window"    # I
    .param p5, "skip"    # Ljava/lang/String;

    .prologue
    .line 433
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p5, v0, v1

    const/16 v1, 0xaf8

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 432
    return-void
.end method

.method public static writeWatchdogSoftReset(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 3
    .param p0, "process"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "maxpss"    # I
    .param p3, "pss"    # I
    .param p4, "skip"    # Ljava/lang/String;

    .prologue
    .line 417
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v1, 0x4

    aput-object p4, v0, v1

    const/16 v1, 0xaf4

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 416
    return-void
.end method

.method public static writeWatchdogVmstat(JIIIII)V
    .locals 4
    .param p0, "runtime"    # J
    .param p2, "pgfree"    # I
    .param p3, "pgactivate"    # I
    .param p4, "pgdeactivate"    # I
    .param p5, "pgfault"    # I
    .param p6, "pgmajfault"    # I

    .prologue
    .line 441
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/16 v1, 0xafa

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 440
    return-void
.end method

.method public static writeWmHomeStackMoved(I)V
    .locals 1
    .param p0, "totop"    # I

    .prologue
    .line 577
    const/16 v0, 0x791d

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 576
    return-void
.end method

.method public static writeWmNoSurfaceMemory(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p0, "window"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "operation"    # Ljava/lang/String;

    .prologue
    .line 557
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/16 v1, 0x7918

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 556
    return-void
.end method

.method public static writeWmStackCreated(IIII)V
    .locals 3
    .param p0, "stackid"    # I
    .param p1, "relativeboxid"    # I
    .param p2, "position"    # I
    .param p3, "weight"    # I

    .prologue
    .line 573
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/16 v1, 0x791c

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 572
    return-void
.end method

.method public static writeWmStackRemoved(I)V
    .locals 1
    .param p0, "stackid"    # I

    .prologue
    .line 581
    const/16 v0, 0x791e

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 580
    return-void
.end method

.method public static writeWmTaskCreated(II)V
    .locals 3
    .param p0, "taskid"    # I
    .param p1, "stackid"    # I

    .prologue
    .line 561
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/16 v1, 0x7919

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 560
    return-void
.end method

.method public static writeWmTaskMoved(III)V
    .locals 3
    .param p0, "taskid"    # I
    .param p1, "totop"    # I
    .param p2, "index"    # I

    .prologue
    .line 565
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/16 v1, 0x791a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 564
    return-void
.end method

.method public static writeWmTaskRemoved(ILjava/lang/String;)V
    .locals 3
    .param p0, "taskid"    # I
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 569
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/16 v1, 0x791b

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 568
    return-void
.end method

.method public static writeWpWallpaperCrashed(Ljava/lang/String;)V
    .locals 1
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 589
    const v0, 0x80e8

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 588
    return-void
.end method

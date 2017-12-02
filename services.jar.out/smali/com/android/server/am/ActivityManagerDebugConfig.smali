.class Lcom/android/server/am/ActivityManagerDebugConfig;
.super Ljava/lang/Object;
.source "ActivityManagerDebugConfig.java"


# static fields
.field static final APPEND_CATEGORY_NAME:Z = false

.field static final DEBUG_ADD_REMOVE:Z = false

.field static final DEBUG_ALL:Z = false

.field static final DEBUG_ALL_ACTIVITIES:Z = false

.field static final DEBUG_ANR:Z = false

.field static final DEBUG_APP:Z = false

.field static final DEBUG_BACKUP:Z = false

.field static final DEBUG_BROADCAST:Z = false

.field static final DEBUG_BROADCAST_BACKGROUND:Z = false

.field static final DEBUG_BROADCAST_LIGHT:Z = false

.field static final DEBUG_CLEANUP:Z = false

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_CONTAINERS:Z = false

.field static final DEBUG_FOCUS:Z = false

.field static final DEBUG_IDLE:Z = false

.field static final DEBUG_IMMERSIVE:Z = false

.field static final DEBUG_LOCKSCREEN:Z = false

.field static final DEBUG_LOCKTASK:Z = false

.field static final DEBUG_LRU:Z = false

.field static final DEBUG_MU:Z = false

.field static final DEBUG_OOM_ADJ:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_PERMISSIONS_REVIEW:Z = false

.field static final DEBUG_POWER:Z = false

.field static final DEBUG_POWER_QUICK:Z = false

.field static final DEBUG_PROCESSES:Z = false

.field static final DEBUG_PROCESS_OBSERVERS:Z = false

.field static final DEBUG_PROVIDER:Z = false

.field static final DEBUG_PSS:Z = false

.field static final DEBUG_RECENTS:Z = false

.field static final DEBUG_RELEASE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SAVED_STATE:Z = false

.field static final DEBUG_SCREENSHOTS:Z = false

.field static final DEBUG_SERVICE:Z = false

.field static final DEBUG_SERVICE_EXECUTING:Z = false

.field static final DEBUG_STACK:Z = false

.field static final DEBUG_STATES:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_THUMBNAILS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_UID_OBSERVERS:Z = false

.field static final DEBUG_URI_PERMISSION:Z = false

.field static final DEBUG_USAGE_STATS:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISIBILITY:Z = false

.field static final DEBUG_VISIBLE_BEHIND:Z = false

.field static final DEBUG_WHITELISTS:Z = false

.field static final POSTFIX_ADD_REMOVE:Ljava/lang/String;

.field static final POSTFIX_APP:Ljava/lang/String;

.field static final POSTFIX_BACKUP:Ljava/lang/String;

.field static final POSTFIX_BROADCAST:Ljava/lang/String;

.field static final POSTFIX_CLEANUP:Ljava/lang/String;

.field static final POSTFIX_CONFIGURATION:Ljava/lang/String;

.field static final POSTFIX_CONTAINERS:Ljava/lang/String;

.field static final POSTFIX_FOCUS:Ljava/lang/String;

.field static final POSTFIX_IDLE:Ljava/lang/String;

.field static final POSTFIX_IMMERSIVE:Ljava/lang/String;

.field static final POSTFIX_LOCKSCREEN:Ljava/lang/String;

.field static final POSTFIX_LOCKTASK:Ljava/lang/String;

.field static final POSTFIX_LRU:Ljava/lang/String;

.field static final POSTFIX_MU:Ljava/lang/String; = "_MU"

.field static final POSTFIX_OOM_ADJ:Ljava/lang/String;

.field static final POSTFIX_PAUSE:Ljava/lang/String;

.field static final POSTFIX_POWER:Ljava/lang/String;

.field static final POSTFIX_PROCESSES:Ljava/lang/String;

.field static final POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

.field static final POSTFIX_PROVIDER:Ljava/lang/String;

.field static final POSTFIX_PSS:Ljava/lang/String;

.field static final POSTFIX_RECENTS:Ljava/lang/String;

.field static final POSTFIX_RELEASE:Ljava/lang/String;

.field static final POSTFIX_RESULTS:Ljava/lang/String;

.field static final POSTFIX_SAVED_STATE:Ljava/lang/String;

.field static final POSTFIX_SCREENSHOTS:Ljava/lang/String;

.field static final POSTFIX_SERVICE:Ljava/lang/String;

.field static final POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

.field static final POSTFIX_STACK:Ljava/lang/String;

.field static final POSTFIX_STATES:Ljava/lang/String;

.field static final POSTFIX_SWITCH:Ljava/lang/String;

.field static final POSTFIX_TASKS:Ljava/lang/String;

.field static final POSTFIX_THUMBNAILS:Ljava/lang/String;

.field static final POSTFIX_TRANSITION:Ljava/lang/String;

.field static final POSTFIX_UID_OBSERVERS:Ljava/lang/String;

.field static final POSTFIX_URI_PERMISSION:Ljava/lang/String;

.field static final POSTFIX_USER_LEAVING:Ljava/lang/String;

.field static final POSTFIX_VISIBILITY:Ljava/lang/String;

.field static final POSTFIX_VISIBLE_BEHIND:Ljava/lang/String;

.field static final TAG_AM:Ljava/lang/String; = "ActivityManager"

.field static final TAG_WITH_CLASS_NAME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_ADD_REMOVE:Ljava/lang/String;

    .line 96
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_APP:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BACKUP:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_BROADCAST:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CLEANUP:Ljava/lang/String;

    .line 100
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    .line 101
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_CONTAINERS:Ljava/lang/String;

    .line 102
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_FOCUS:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IDLE:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_IMMERSIVE:Ljava/lang/String;

    .line 105
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKSCREEN:Ljava/lang/String;

    .line 106
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LOCKTASK:Ljava/lang/String;

    .line 107
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_LRU:Ljava/lang/String;

    .line 109
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_OOM_ADJ:Ljava/lang/String;

    .line 110
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PAUSE:Ljava/lang/String;

    .line 111
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_POWER:Ljava/lang/String;

    .line 113
    const-string/jumbo v0, ""

    .line 112
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESS_OBSERVERS:Ljava/lang/String;

    .line 114
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROCESSES:Ljava/lang/String;

    .line 115
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PROVIDER:Ljava/lang/String;

    .line 116
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_PSS:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RECENTS:Ljava/lang/String;

    .line 118
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    .line 119
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_RESULTS:Ljava/lang/String;

    .line 120
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SAVED_STATE:Ljava/lang/String;

    .line 121
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SCREENSHOTS:Ljava/lang/String;

    .line 122
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE:Ljava/lang/String;

    .line 124
    const-string/jumbo v0, ""

    .line 123
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SERVICE_EXECUTING:Ljava/lang/String;

    .line 125
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STACK:Ljava/lang/String;

    .line 126
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_STATES:Ljava/lang/String;

    .line 127
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_SWITCH:Ljava/lang/String;

    .line 128
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TASKS:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_THUMBNAILS:Ljava/lang/String;

    .line 130
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_TRANSITION:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, ""

    .line 131
    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_UID_OBSERVERS:Ljava/lang/String;

    .line 133
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_URI_PERMISSION:Ljava/lang/String;

    .line 134
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_USER_LEAVING:Ljava/lang/String;

    .line 135
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBILITY:Ljava/lang/String;

    .line 136
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/ActivityManagerDebugConfig;->POSTFIX_VISIBLE_BEHIND:Ljava/lang/String;

    .line 23
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

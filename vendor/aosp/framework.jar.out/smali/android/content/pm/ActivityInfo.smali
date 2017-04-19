.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ActivityInfo$1;
    }
.end annotation


# static fields
.field public static final CONFIG_DENSITY:I = 0x1000

.field public static final CONFIG_FONT_SCALE:I = 0x40000000

.field public static final CONFIG_KEYBOARD:I = 0x10

.field public static final CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final CONFIG_LOCALE:I = 0x4

.field public static final CONFIG_MCC:I = 0x1

.field public static final CONFIG_MNC:I = 0x2

.field public static CONFIG_NATIVE_BITS:[I = null

.field public static final CONFIG_NAVIGATION:I = 0x40

.field public static final CONFIG_ORIENTATION:I = 0x80

.field public static final CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final CONFIG_SCREEN_SIZE:I = 0x400

.field public static final CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final CONFIG_TOUCHSCREEN:I = 0x8

.field public static final CONFIG_UI_MODE:I = 0x200

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOCUMENT_LAUNCH_ALWAYS:I = 0x2

.field public static final DOCUMENT_LAUNCH_INTO_EXISTING:I = 0x1

.field public static final DOCUMENT_LAUNCH_NEVER:I = 0x3

.field public static final DOCUMENT_LAUNCH_NONE:I = 0x0

.field public static final FLAG_ALLOW_EMBEDDED:I = -0x80000000

.field public static final FLAG_ALLOW_TASK_REPARENTING:I = 0x40

.field public static final FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final FLAG_AUTO_REMOVE_FROM_RECENTS:I = 0x2000

.field public static final FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final FLAG_IMMERSIVE:I = 0x800

.field public static final FLAG_MULTIPROCESS:I = 0x1

.field public static final FLAG_NO_HISTORY:I = 0x80

.field public static final FLAG_PRIMARY_USER_ONLY:I = 0x20000000

.field public static final FLAG_RELINQUISH_TASK_IDENTITY:I = 0x1000

.field public static final FLAG_RESUME_WHILE_PAUSING:I = 0x4000

.field public static final FLAG_SHOW_FOR_ALL_USERS:I = 0x400

.field public static final FLAG_SINGLE_USER:I = 0x40000000

.field public static final FLAG_STATE_NOT_NEEDED:I = 0x10

.field public static final LAUNCH_MULTIPLE:I = 0x0

.field public static final LAUNCH_SINGLE_INSTANCE:I = 0x3

.field public static final LAUNCH_SINGLE_TASK:I = 0x2

.field public static final LAUNCH_SINGLE_TOP:I = 0x1

.field public static final LOCK_TASK_LAUNCH_MODE_ALWAYS:I = 0x2

.field public static final LOCK_TASK_LAUNCH_MODE_DEFAULT:I = 0x0

.field public static final LOCK_TASK_LAUNCH_MODE_IF_WHITELISTED:I = 0x3

.field public static final LOCK_TASK_LAUNCH_MODE_NEVER:I = 0x1

.field public static final PERSIST_ACROSS_REBOOTS:I = 0x2

.field public static final PERSIST_NEVER:I = 0x1

.field public static final PERSIST_ROOT_ONLY:I = 0x0

.field public static final SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final SCREEN_ORIENTATION_FULL_USER:I = 0xd

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final SCREEN_ORIENTATION_LOCKED:I = 0xe

.field public static final SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final SCREEN_ORIENTATION_USER:I = 0x2

.field public static final SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final SCREEN_ORIENTATION_USER_PORTRAIT:I = 0xc

.field public static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:I = 0x1


# instance fields
.field public configChanges:I

.field public documentLaunchMode:I

.field public flags:I

.field public launchMode:I

.field public lockTaskLaunchMode:I

.field public maxRecents:I

.field public parentActivityName:Ljava/lang/String;

.field public permission:Ljava/lang/String;

.field public persistableMode:I

.field public resizeable:Z

.field public screenOrientation:I

.field public softInputMode:I

.field public targetActivity:Ljava/lang/String;

.field public taskAffinity:Ljava/lang/String;

.field public theme:I

.field public uiOptions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 561
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    .line 805
    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    .line 804
    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 34
    return-void

    .line 561
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x800
        0x1000
        0x200
        0x2000
        0x100
        0x4000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 705
    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 651
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 705
    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 1
    .param p1, "orig"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 709
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    .line 447
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 651
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 710
    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 711
    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 712
    iget v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 713
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 714
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 715
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 716
    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 717
    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 718
    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 719
    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 720
    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 721
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 722
    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 723
    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->resizeable:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    .line 724
    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 708
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 815
    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    .line 447
    const/4 v2, -0x1

    iput v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 651
    iput v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 816
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 817
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 818
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    .line 819
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 820
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 821
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 822
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 823
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 824
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 825
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 826
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 827
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 828
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 829
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    .line 830
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    .line 831
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 814
    return-void

    :cond_0
    move v0, v1

    .line 830
    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static activityInfoConfigNativeToJava(I)I
    .locals 3
    .param p0, "input"    # I

    .prologue
    .line 599
    const/4 v1, 0x0

    .line 600
    .local v1, "output":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 601
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 602
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    .line 600
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 605
    :cond_1
    return v1
.end method

.method public static activityInfoConfigToNative(I)I
    .locals 3
    .param p0, "input"    # I

    .prologue
    .line 584
    const/4 v1, 0x0

    .line 585
    .local v1, "output":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 586
    const/4 v2, 0x1

    shl-int/2addr v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    .line 587
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 585
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 590
    :cond_1
    return v1
.end method

.method public static final lockTaskLaunchModeToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "lockTaskLaunchMode"    # I

    .prologue
    .line 685
    packed-switch p0, :pswitch_data_0

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 687
    :pswitch_0
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    return-object v0

    .line 689
    :pswitch_1
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    return-object v0

    .line 691
    :pswitch_2
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    return-object v0

    .line 693
    :pswitch_3
    const-string/jumbo v0, "LOCK_TASK_LAUNCH_MODE_IF_WHITELISTED"

    return-object v0

    .line 685
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private persistableModeToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 739
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    packed-switch v0, :pswitch_data_0

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 740
    :pswitch_0
    const-string/jumbo v0, "PERSIST_ROOT_ONLY"

    return-object v0

    .line 741
    :pswitch_1
    const-string/jumbo v0, "PERSIST_NEVER"

    return-object v0

    .line 742
    :pswitch_2
    const-string/jumbo v0, "PERSIST_ACROSS_REBOOTS"

    return-object v0

    .line 739
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 781
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 748
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 752
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "taskAffinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 753
    const-string/jumbo v1, " targetActivity="

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 753
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 754
    const-string/jumbo v1, " persistableMode="

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 754
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    move-result-object v1

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 755
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    if-eqz v0, :cond_6

    .line 756
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "launchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    const-string/jumbo v1, " flags=0x"

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 757
    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 758
    const-string/jumbo v1, " theme=0x"

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 758
    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 760
    :cond_2
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 761
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-eqz v0, :cond_7

    .line 762
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "screenOrientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 763
    const-string/jumbo v1, " configChanges=0x"

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 763
    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 764
    const-string/jumbo v1, " softInputMode=0x"

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 764
    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 766
    :cond_4
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v0, :cond_5

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " uiOptions=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 769
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "resizeable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " lockTaskLaunchMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 770
    iget v1, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-static {v1}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 771
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;)V

    .line 747
    return-void

    .line 755
    :cond_6
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 761
    :cond_7
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v0, :cond_4

    goto/16 :goto_1
.end method

.method public getRealConfigChanged()I
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 618
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v0, v0, 0x400

    or-int/lit16 v0, v0, 0x800

    .line 617
    :goto_0
    return v0

    .line 620
    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_0
.end method

.method public final getThemeResource()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ActivityInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 776
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    const-string/jumbo v1, " "

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 777
    const-string/jumbo v1, "}"

    .line 775
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 785
    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 786
    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    iget v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 790
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 792
    iget v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    iget v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 794
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 795
    iget v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 796
    iget v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 797
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 798
    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    iget v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    iget-boolean v0, p0, Landroid/content/pm/ActivityInfo;->resizeable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 784
    return-void

    .line 800
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

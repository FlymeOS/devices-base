.class final Lcom/android/server/tv/TvInputManagerService$SessionState;
.super Ljava/lang/Object;
.source "TvInputManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SessionState"
.end annotation


# instance fields
.field private final callingUid:I

.field private final client:Landroid/media/tv/ITvInputClient;

.field private final componentName:Landroid/content/ComponentName;

.field private hardwareSessionToken:Landroid/os/IBinder;

.field private final inputId:Ljava/lang/String;

.field private final isRecordingSession:Z

.field private logUri:Landroid/net/Uri;

.field private final seq:I

.field private session:Landroid/media/tv/ITvInputSession;

.field private final sessionToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;

.field private final userId:I


# direct methods
.method static synthetic -get0(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputClient;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/tv/TvInputManagerService$SessionState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/tv/TvInputManagerService$SessionState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->logUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/tv/TvInputManagerService$SessionState;)I
    .locals 1

    iget v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/media/tv/ITvInputSession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/tv/TvInputManagerService$SessionState;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->hardwareSessionToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/tv/TvInputManagerService$SessionState;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;
    .locals 0

    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    return-object p1
.end method

.method private constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;III)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "isRecordingSession"    # Z
    .param p6, "client"    # Landroid/media/tv/ITvInputClient;
    .param p7, "seq"    # I
    .param p8, "callingUid"    # I
    .param p9, "userId"    # I

    .prologue
    .line 2122
    iput-object p1, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2125
    iput-object p2, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->sessionToken:Landroid/os/IBinder;

    .line 2126
    iput-object p3, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->inputId:Ljava/lang/String;

    .line 2127
    iput-object p4, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->componentName:Landroid/content/ComponentName;

    .line 2128
    iput-boolean p5, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->isRecordingSession:Z

    .line 2129
    iput-object p6, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->client:Landroid/media/tv/ITvInputClient;

    .line 2130
    iput p7, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->seq:I

    .line 2131
    iput p8, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->callingUid:I

    .line 2132
    iput p9, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->userId:I

    .line 2124
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;IIILcom/android/server/tv/TvInputManagerService$SessionState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/tv/TvInputManagerService;
    .param p2, "sessionToken"    # Landroid/os/IBinder;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "componentName"    # Landroid/content/ComponentName;
    .param p5, "isRecordingSession"    # Z
    .param p6, "client"    # Landroid/media/tv/ITvInputClient;
    .param p7, "seq"    # I
    .param p8, "callingUid"    # I
    .param p9, "userId"    # I

    .prologue
    invoke-direct/range {p0 .. p9}, Lcom/android/server/tv/TvInputManagerService$SessionState;-><init>(Lcom/android/server/tv/TvInputManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/ComponentName;ZLandroid/media/tv/ITvInputClient;III)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->-get2(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2138
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->session:Landroid/media/tv/ITvInputSession;

    .line 2139
    iget-object v0, p0, Lcom/android/server/tv/TvInputManagerService$SessionState;->this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-static {v0, p0}, Lcom/android/server/tv/TvInputManagerService;->-wrap11(Lcom/android/server/tv/TvInputManagerService;Lcom/android/server/tv/TvInputManagerService$SessionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2136
    return-void

    .line 2137
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

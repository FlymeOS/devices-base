.class public final Landroid/content/pm/permission/RuntimePermissionPresenter;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;,
        Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
    }
.end annotation


# static fields
.field public static final KEY_RESULT:Ljava/lang/String; = "android.content.pm.permission.RuntimePermissionPresenter.key.result"

.field private static final TAG:Ljava/lang/String; = "RuntimePermPresenter"

.field private static sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sLock"
    .end annotation
.end field

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private final mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-direct {v0, p1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 108
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/pm/permission/RuntimePermissionPresenter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v1, Landroid/content/pm/permission/RuntimePermissionPresenter;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    sget-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Landroid/content/pm/permission/RuntimePermissionPresenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;

    .line 104
    :cond_0
    sget-object v0, Landroid/content/pm/permission/RuntimePermissionPresenter;->sInstance:Landroid/content/pm/permission/RuntimePermissionPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getAppPermissions(Ljava/lang/String;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 121
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 122
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 123
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 124
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 125
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 126
    const/4 v3, 0x1

    .line 125
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 127
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-virtual {v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->processMessage(Landroid/os/Message;)V

    .line 120
    return-void
.end method

.method public getAppsUsingPermissions(ZLandroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "system"    # Z
    .param p2, "callback"    # Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 144
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 145
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 146
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 147
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 148
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    .line 149
    const/4 v3, 0x2

    .line 148
    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 150
    .local v1, "message":Landroid/os/Message;
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter;->mRemoteService:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    invoke-virtual {v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->processMessage(Landroid/os/Message;)V

    .line 143
    return-void

    .line 147
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

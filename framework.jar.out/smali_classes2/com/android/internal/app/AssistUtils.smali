.class public Lcom/android/internal/app/AssistUtils;
.super Ljava/lang/Object;
.source "AssistUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AssistUtils"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    .line 49
    const-string/jumbo v0, "voiceinteraction"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 48
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 46
    return-void
.end method

.method public static allowDisablingAssistDisclosure(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 207
    const v1, 0x11200b9

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private static isDisclosureEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 188
    const-string/jumbo v2, "assist_disclosure_enabled"

    .line 187
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x0

    .line 173
    if-nez p1, :cond_0

    .line 174
    return v5

    .line 178
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 178
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 183
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v2

    :goto_0
    return v2

    .line 180
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return v5

    .line 183
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assistant"    # Landroid/content/ComponentName;

    .prologue
    const/4 v0, 0x1

    .line 198
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->allowDisablingAssistDisclosure(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    return v0

    .line 202
    :cond_0
    invoke-static {p0}, Lcom/android/internal/app/AssistUtils;->isDisclosureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/app/AssistUtils;->isPreinstalledAssistant(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method public activeServiceSupportsAssistGesture()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsAssist()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 77
    :cond_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AssistUtils"

    const-string/jumbo v3, "Failed to call activeServiceSupportsAssistGesture"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    return v1
.end method

.method public activeServiceSupportsLaunchFromKeyguard()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 87
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->activeServiceSupportsLaunchFromKeyguard()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 87
    :cond_0
    return v1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AssistUtils"

    const-string/jumbo v3, "Failed to call activeServiceSupportsLaunchFromKeyguard"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    return v1
.end method

.method public getActiveServiceComponentName()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getActiveServiceComponentName()Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 100
    :cond_0
    return-object v3

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    const-string/jumbo v2, "Failed to call getActiveServiceComponentName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    return-object v3
.end method

.method public getAssistComponentForUser(I)Landroid/content/ComponentName;
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 149
    iget-object v4, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 150
    const-string/jumbo v5, "assistant"

    .line 149
    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "setting":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 152
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    return-object v4

    .line 156
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->activeServiceSupportsAssistGesture()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    move-result-object v4

    return-object v4

    .line 160
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    .line 161
    const/4 v5, 0x0

    .line 160
    invoke-virtual {v4, v5}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    move-result-object v1

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/app/AssistUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 163
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/high16 v4, 0x10000

    invoke-virtual {v2, v1, v4, p1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 165
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_2

    .line 166
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 167
    iget-object v6, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 166
    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 169
    :cond_2
    return-object v6
.end method

.method public hideCurrentSession()V
    .locals 3

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->hideCurrentSession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    const-string/jumbo v2, "Failed to call hideCurrentSession"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isSessionRunning()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->isSessionRunning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 110
    :cond_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "AssistUtils"

    const-string/jumbo v3, "Failed to call isSessionRunning"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    return v1
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 3

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->launchVoiceAssistFromKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    const-string/jumbo v2, "Failed to call launchVoiceAssistFromKeyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onLockscreenShown()V
    .locals 3

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->onLockscreenShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    const-string/jumbo v2, "Failed to call onLockscreenShown"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/internal/app/IVoiceInteractionSessionListener;

    .prologue
    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    const-string/jumbo v2, "Failed to register voice interaction listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "sourceFlags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/internal/app/AssistUtils;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSessionForActiveService(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AssistUtils"

    const-string/jumbo v2, "Failed to call showSessionForActiveService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

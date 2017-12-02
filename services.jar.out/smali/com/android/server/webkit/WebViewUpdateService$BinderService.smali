.class Lcom/android/server/webkit/WebViewUpdateService$BinderService;
.super Landroid/webkit/IWebViewUpdateService$Stub;
.source "WebViewUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/webkit/WebViewUpdateService;


# direct methods
.method private constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-direct {p0}, Landroid/webkit/IWebViewUpdateService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/webkit/WebViewUpdateService;Lcom/android/server/webkit/WebViewUpdateService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/webkit/WebViewUpdateService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/webkit/WebViewUpdateService$BinderService;-><init>(Lcom/android/server/webkit/WebViewUpdateService;)V

    return-void
.end method


# virtual methods
.method public changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "newProvider"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v3}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 195
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    .line 194
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: changeProviderAndSetting() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    const-string/jumbo v4, ", uid="

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    const-string/jumbo v4, " requires "

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 200
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    .line 197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "msg":Ljava/lang/String;
    const-string/jumbo v3, "WebViewUpdateService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 205
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 207
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 207
    return-object v3

    .line 209
    :catchall_0
    move-exception v3

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 209
    throw v3
.end method

.method public enableFallbackLogic(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    .line 236
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v3}, Lcom/android/server/webkit/WebViewUpdateService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 237
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    .line 236
    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Permission Denial: enableFallbackLogic() from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 240
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    const-string/jumbo v4, ", uid="

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    const-string/jumbo v4, " requires "

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 242
    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    .line 239
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "msg":Ljava/lang/String;
    const-string/jumbo v3, "WebViewUpdateService"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 247
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 249
    .local v0, "callingId":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v3}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->enableFallbackLogic(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 235
    return-void

    .line 250
    :catchall_0
    move-exception v3

    .line 251
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 250
    throw v3
.end method

.method public getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getCurrentWebViewPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public isFallbackPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->isFallbackPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public notifyRelroCreationCompleted()V
    .locals 4

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x40d

    if-eq v2, v3, :cond_0

    .line 160
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 166
    .local v0, "callingId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v2}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->notifyRelroCreationCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 155
    return-void

    .line 167
    :catchall_0
    move-exception v2

    .line 168
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 167
    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 7
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "resultReceiver"    # Landroid/os/ResultReceiver;

    .prologue
    .line 144
    new-instance v0, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;-><init>(Landroid/webkit/IWebViewUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/webkit/WebViewUpdateServiceShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I

    .line 143
    return-void
.end method

.method public waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 2

    .prologue
    .line 182
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot create a WebView from the SystemServer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/server/webkit/WebViewUpdateService$BinderService;->this$0:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-static {v0}, Lcom/android/server/webkit/WebViewUpdateService;->-get0(Lcom/android/server/webkit/WebViewUpdateService;)Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdateServiceImpl;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0
.end method

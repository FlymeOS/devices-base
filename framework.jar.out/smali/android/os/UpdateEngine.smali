.class public Landroid/os/UpdateEngine;
.super Ljava/lang/Object;
.source "UpdateEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UpdateEngine$ErrorCodeConstants;,
        Landroid/os/UpdateEngine$UpdateStatusConstants;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateEngine"

.field private static final UPDATE_ENGINE_SERVICE:Ljava/lang/String; = "android.os.UpdateEngineService"


# instance fields
.field private mUpdateEngine:Landroid/os/IUpdateEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const-string/jumbo v0, "android.os.UpdateEngineService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/os/IUpdateEngine$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUpdateEngine;

    move-result-object v0

    iput-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    .line 84
    return-void
.end method


# virtual methods
.method public applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .param p6, "headerKeyValuePairs"    # [Ljava/lang/String;

    .prologue
    .line 136
    :try_start_0
    iget-object v0, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/os/IUpdateEngine;->applyPayload(Ljava/lang/String;JJ[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-void

    .line 137
    :catch_0
    move-exception v7

    .line 138
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public bind(Landroid/os/UpdateEngineCallback;)Z
    .locals 1
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/UpdateEngine;->bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method

.method public bind(Landroid/os/UpdateEngineCallback;Landroid/os/Handler;)Z
    .locals 3
    .param p1, "callback"    # Landroid/os/UpdateEngineCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 91
    new-instance v1, Landroid/os/UpdateEngine$1;

    invoke-direct {v1, p0, p2, p1}, Landroid/os/UpdateEngine$1;-><init>(Landroid/os/UpdateEngine;Landroid/os/Handler;Landroid/os/UpdateEngineCallback;)V

    .line 122
    .local v1, "updateEngineCallback":Landroid/os/IUpdateEngineCallback;
    :try_start_0
    iget-object v2, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v2, v1}, Landroid/os/IUpdateEngine;->bind(Landroid/os/IUpdateEngineCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 145
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resetStatus()V
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->resetStatus()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 154
    :try_start_0
    iget-object v1, p0, Landroid/os/UpdateEngine;->mUpdateEngine:Landroid/os/IUpdateEngine;

    invoke-interface {v1}, Landroid/os/IUpdateEngine;->suspend()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

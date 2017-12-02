.class public abstract Landroid/service/voice/VoiceInteractionManagerInternal;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V
.end method

.method public abstract stopLocalVoiceInteraction(Landroid/os/IBinder;)V
.end method

.method public abstract supportsLocalVoiceInteraction()Z
.end method

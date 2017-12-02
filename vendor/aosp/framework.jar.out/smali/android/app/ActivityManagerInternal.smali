.class public abstract Landroid/app/ActivityManagerInternal;
.super Ljava/lang/Object;
.source "ActivityManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerInternal$SleepToken;
    }
.end annotation


# static fields
.field public static final APP_TRANSITION_SAVED_SURFACE:I = 0x0

.field public static final APP_TRANSITION_STARTING_WINDOW:I = 0x1

.field public static final APP_TRANSITION_TIMEOUT:I = 0x3

.field public static final APP_TRANSITION_WINDOWS_DRAWN:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract acquireSleepToken(Ljava/lang/String;)Landroid/app/ActivityManagerInternal$SleepToken;
.end method

.method public abstract checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public abstract getHomeActivityForUser(I)Landroid/content/ComponentName;
.end method

.method public abstract getTopVisibleActivities()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUidProcessState(I)I
.end method

.method public abstract grantUriPermissionFromIntent(ILjava/lang/String;Landroid/content/Intent;I)V
.end method

.method public abstract killForegroundAppsForUser(I)V
.end method

.method public abstract notifyAppTransitionCancelled()V
.end method

.method public abstract notifyAppTransitionFinished()V
.end method

.method public abstract notifyAppTransitionStarting(I)V
.end method

.method public abstract notifyDockedStackMinimizedChanged(Z)V
.end method

.method public abstract notifyStartingWindowDrawn()V
.end method

.method public abstract onLocalVoiceInteractionStarted(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
.end method

.method public abstract onUserRemoved(I)V
.end method

.method public abstract onWakefulnessChanged(I)V
.end method

.method public abstract setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;J)V
.end method

.method public abstract startActivitiesAsPackage(Ljava/lang/String;I[Landroid/content/Intent;Landroid/os/Bundle;)I
.end method

.method public abstract startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)I
.end method

.method public abstract updatePersistentConfigurationForUser(Landroid/content/res/Configuration;I)V
.end method

.class public abstract Landroid/os/UserManagerInternal;
.super Ljava/lang/Object;
.source "UserManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UserManagerInternal$UserRestrictionsListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract createUserEvenWhenDisallowed(Ljava/lang/String;I)Landroid/content/pm/UserInfo;
.end method

.method public abstract getBaseUserRestrictions(I)Landroid/os/Bundle;
.end method

.method public abstract getUserRestriction(ILjava/lang/String;)Z
.end method

.method public abstract isUserRunning(I)Z
.end method

.method public abstract isUserUnlocked(I)Z
.end method

.method public abstract isUserUnlockingOrUnlocked(I)Z
.end method

.method public abstract onEphemeralUserStop(I)V
.end method

.method public abstract removeAllUsers()V
.end method

.method public abstract removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
.end method

.method public abstract removeUserState(I)V
.end method

.method public abstract setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
.end method

.method public abstract setDeviceManaged(Z)V
.end method

.method public abstract setDevicePolicyUserRestrictions(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end method

.method public abstract setForceEphemeralUsers(Z)V
.end method

.method public abstract setUserIcon(ILandroid/graphics/Bitmap;)V
.end method

.method public abstract setUserManaged(IZ)V
.end method

.method public abstract setUserState(II)V
.end method
